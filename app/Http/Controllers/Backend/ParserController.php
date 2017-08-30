<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Article;
use App\Models\ParsedData;
use Carbon\Carbon;
use Illuminate\Support\Collection;
use Goutte\Client;
use GuzzleHttp\Client as GuzzleClient;
use Symfony\Component\DomCrawler\Crawler;

class ParserController extends Controller
{

    private $dataPath;
    private $parserSettings; //timeout - час у секундах до розірвання з'єднання. delay - мс. затримка між запиатами
    private $getBranches; // true = разом з філіалами, false = без

    public function __construct()
    {
        $this->dataPath = public_path('data.csv');
        $this->parserSettings = [
            'timeout'     => 10,
            'delay'       => rand(3000, 4000),
            'http_errors' => false,
        ];
        $this->getBranches = true;
    }
    public function start()
    {
        $pawnshopsIds = $this->getBranchesFromFile($this->csvToArray($this->dataPath, ';'));
        $checkData = ParsedData::all();
        $checkData = $checkData->map(function ($item) {
            return $item['IM_NUMIDENT'];
        });

        $this->getSiteData($pawnshopsIds->diff($checkData));

        return [
            'Зарисів у файлі'     => count($pawnshopsIds),
            'Всього записів'      => count($checkData),
            'Нових\Не оброблених' => count($pawnshopsIds->diff($checkData)),
        ];
    }
    /**
     * Дістаємо "Код за ЄДРПОУ" з csv файлу
     * @param Collection $dataArray
     * @return Collection
     */
    private function getBranchesFromFile($dataArray)
    {
        return $dataArray->filter(function ($node) {
            return $node['Тип установи'] == 'Ломбард';
        })->map(function ($node) {
            return $node['Код за ЄДРПОУ'];
        });

    }
    /**
     * Відкриваємо і розпаршуємо файл, для подальшої роботи
     * @param string $filename
     * @param string $delimiter
     * @return Collection|bool
     */
    private function csvToArray($filename = '', $delimiter = ',')
    {
        function utf8_fopen_read($fileName)
        {
            $fc = iconv('windows-1251', 'utf-8', file_get_contents($fileName));
            $handle = fopen("php://memory", "rw");
            fwrite($handle, $fc);
            fseek($handle, 0);

            return $handle;
        }

        if (!file_exists($filename) || !is_readable($filename)) {
            return false;
        }
        $header = null;
        $data = collect([]);
        if (($handle = utf8_fopen_read($filename)) !== false) {
            while (($row = fgetcsv($handle, 1000, $delimiter)) !== false) {
                if (!$header) {
                    $header = $row;
                } else {
                    $data[] = array_combine($header, $row);
                }
            }
            fclose($handle);
        }

        return $data;
    }
    /**
     *Тіло  Парсингу данних з сайту
     * @param $ids
     * @param int $type
     * @return Collection|null
     */
    private function getSiteData($ids, $type = 6)
    {
        $client = new Client();

        $guzzleClient = new GuzzleClient($this->parserSettings);
        $client->setClient($guzzleClient);

        $crawler = $client->request('GET', 'http://www.kis.nfp.gov.ua');
        $_viewState = $crawler->filter('#__VIEWSTATE')->attr('value');
        $_viewStateGenerate = $crawler->filter('#__VIEWSTATEGENERATOR')->attr('value');
        $form = $crawler->selectButton('Пошук')->form();

        $pawnshopsInfo = collect([]);
        foreach ($ids as $pawnshopCode) {
            $siteData = $client->submit($form, [
                'p_EDRPOU'             => $pawnshopCode,
                'p_IRL_FT'             => $type,
                '__VIEWSTATE'          => $_viewState,
                '__VIEWSTATEGENERATOR' => $_viewStateGenerate,
            ]);
            if ($siteData) {
                $pawnshopsInfo = $this->getPawnshop($siteData);
                $this->saveDataToDB($pawnshopsInfo);
            }
        }

        return $pawnshopsInfo;
    }
    /**
     * Виокремлення Ломбарду, якщо потрібно - вмикання пошуку філіалів
     * @param Crawler $crawler
     * @return Collection|null
     */
    private function getPawnshop(Crawler $crawler)
    {
        $pawnshopData = collect([]);
        $shop = $crawler->filter('.t11ReportsRegion100Width .grid td');

        if ($shop) {
            $shop->each(function (Crawler $node) use (&$pawnshopData) {
                if ($node->filter('a')->count()) {
                    $pawnshopData[$node->attr('headers')] = 'http://www.kis.nfp.gov.ua'.$node->filter('a')->attr('href');

                    return;
                }
                //Якщо філал без ссилки
                if ($node->attr('headers') == 'FILIALS' & !$node->filter('a')->count()) {
                    $pawnshopData[$node->attr('headers')] = null;

                    return;
                }
                $pawnshopData[$node->attr('headers')] = $node->text();
            });

            if ($this->isBranches($pawnshopData) && $this->getBranches == true) {
                $branch_url = $this->getBranchFromPawnshop($pawnshopData);
                $pawnshopData['filials_data'] = $this->getPawnshopBranch($branch_url);
            }

            return $pawnshopData;
        }

        return null;
    }
    /**
     * Перевірка на існування філіалу на сторінці Ломбарду
     * @param Collection $pawnshopData
     * @return bool
     */
    private function isBranches($pawnshopData)
    {
        if (!empty($this->getBranchFromPawnshop($pawnshopData))) {
            return true;
        }

        return false;
    }
    /**
     * Дістати посилання на філіал з тіла відпарсенного матеріалу
     * @param Collection $pawnshopData
     * @return string
     */
    private function getBranchFromPawnshop($pawnshopData)
    {
        return $pawnshopData->get('FILIALS');
    }
    /**
     * Запит на отримання данних з філіалів
     * @param string $url
     * @return Collection|null
     */
    private function getPawnshopBranch($url)
    {
        $client = new Client();
        $guzzleClient = new GuzzleClient($this->parserSettings);
        $client->setClient($guzzleClient);

        $crawler = $client->request('GET', $url);
        $branches = collect([]);
        $getBranches = $crawler->filter('.zebra tr');
        if ($getBranches) {
            $getBranches->each(function (Crawler $node, $i) use (&$branches, &$branchesTableColumnNames) {
                if ($i === 0) {
                    $node->filter('th')->each(function (Crawler $node, $i) use (&$branchesTableColumnNames) {
                        $branchesTableColumnNames[$i] = $node->attr('id');
                    });

                    return;
                }
                $branchItem = [];

                $node->filter('td')->each(function (Crawler $node, $i) use (&$branchItem, $branchesTableColumnNames) {
                    if ($node->filter('a')->count()) {
                        $branchItem[$branchesTableColumnNames[$i]] = 'http://www.kis.nfp.gov.ua'.$node->filter('a')->attr('href');

                        return;
                    }
                    $branchItem[$branchesTableColumnNames[$i]] = $node->text();
                });

                $branches[] = $branchItem;
            });

            return $branches;
        }

        return null;
    }
    /**
     * Збереження результатів парсингу в Базу
     * @param Collection $data
     */
    private function saveDataToDB($data)
    {
        $newPawnshopData = new ParsedData();
        foreach ($data as $key => $value) {
            if ($key == 'filials_data') {
                break;
            }
            if ($key == 'IA_PHONE_CODE') {
                $newPawnshopData->IA_PHONE_CODE = preg_replace("/[^0-9]/", "", $value);
            } elseIf ($key == 'IA_PHONE') {
                //dd(preg_replace("/[^0-9]/", "", $value));
                $newPawnshopData->IA_PHONE = preg_replace("/[^0-9]/", "", $value);
            } elseIf ($key == 'IM_NUMIDENT') {
                $newPawnshopData->IM_NUMIDENT = preg_replace("/[^0-9]/", "", $value);
            } else {
                $newPawnshopData->{$key} = $value;
            }
        }
        $newPawnshopData->parsed_at = Carbon::now();
        $newPawnshopData->save();
        if ($data['FILIALS'] != null) {
            foreach ($data['filials_data'] as $branch) {
                $newBranchData = new ParsedData();
                foreach ($branch as $child_key => $child_value) {
                    if ($child_key == 'IM_NUMIDENT') {
                        $newBranchData->IAN_FULL_NAME = $child_value;
                    } elseIf ($child_key == 'IAN_FULL_NAME') {
                        $newBranchData->IM_NUMIDENT = preg_replace("/[^0-9]/", "", $child_value);
                    } elseIf ($child_key == 'IA_PHONE_CODE') {
                        $newBranchData->IA_PHONE_CODE = preg_replace("/[^0-9]/", "", $child_value);
                    } elseIf ($child_key == 'IA_PHONE') {
                        $newBranchData->IA_PHONE = preg_replace("/[^0-9]/", "", $child_value);
                    } else {
                        $newBranchData->{$child_key} = $child_value;
                    }
                }
                $newBranchData->parsed_at = Carbon::now();
                $newPawnshopData->filials_data()->save($newBranchData);

            }
        }
    }
    public function transferData()
    {
        $data = ParsedData::whereNull('parent_id')->get();
//        $art = Article::find(69);
//        dd(json_decode((string)$art->attributes));

        foreach ($data as $pawnshop) {
            if (Article::where('title', $pawnshop->IAN_FULL_NAME.'@|;')->first()) {
                continue;
            }

            $newPawnshopArticle = new Article();

            $fields = [
                "Код ЄДРПОУ"                     => $pawnshop->IM_NUMIDENT,
                "Серія свідоцтва про реєстрацію" => $pawnshop->IAN_RO_SERIA,
                "Номер свідоцтва про реєстрацію" => $pawnshop->IAN_RO_CODE,
                "Статус"                         => $pawnshop->DIC_NAME,
                "E-mail"                         => $pawnshop->IAN_EMAIL,
                'Міжміський телефонний код'      => $pawnshop->IA_PHONE_CODE,
                "Телефон"                        => $pawnshop->IA_PHONE,
                "Логотип"                        => '',
                "Адреса"                         => $pawnshop->F_ADR.'@|;'.$pawnshop->F_ADR.'@|;',
                "Область"                        => $pawnshop->IND_OBL.'@|;'.$pawnshop->IND_OBL.'@|;',
                "Керівник"                       => $pawnshop->K_NAME.'@|;'.$pawnshop->K_NAME.'@|;',
            ];

            $newPawnshopArticle->attributes = json_encode($fields);
            $newPawnshopArticle->title = $pawnshop->IAN_FULL_NAME.'@|;'.$pawnshop->IAN_FULL_NAME.'@|;';
            $newPawnshopArticle->description = '@|;';
            $newPawnshopArticle->name = '';
            $newPawnshopArticle->short_description = '@|;';
            $newPawnshopArticle->meta_title = '@|;';
            $newPawnshopArticle->meta_description = '@|;';
            $newPawnshopArticle->meta_keywords = '@|;';
            $newPawnshopArticle->img = '';
            $newPawnshopArticle->imgs = '[]';
            $newPawnshopArticle->files = '';
            $newPawnshopArticle->priority = 0;
            $newPawnshopArticle->active = true;
            $newPawnshopArticle->date = Carbon::now()->format('Y-m-d H:i:s');
            $newPawnshopArticle->category_id = 13;
            $newPawnshopArticle->article_id = 0;
            $newPawnshopArticle->save();
            if ($children = $pawnshop->children()->get()) {
                foreach ($children as $branch) {
                    if (Article::where('title', $branch->IAN_FULL_NAME.'@|;')->first()) {
                        continue;
                    }
                    $newBranchArticle = new Article();
                    $fields = [
                        "Код ЄДРПОУ"                => $branch->IM_NUMIDENT,
                        "Статус"                    => $branch->ST_NAME,
                        'Міжміський телефонний код' => $branch->IA_PHONE_CODE,
                        "Телефон"                   => $branch->IA_PHONE,
                        "Відділення"                => '',
                        "Адреса"                    => $branch->IA_FULL.'@|;'.$branch->IA_FULL.'@|;',
                        "Область"                   => $branch->IND_OBL.'@|;'.$branch->IND_OBL.'@|;',
                        "Керівник"                  => $branch->FIO.'@|;'.$branch->FIO.'@|;',
                    ];
                    $newBranchArticle->attributes = json_encode($fields);
                    $newBranchArticle->title = $pawnshop->IAN_FULL_NAME.'@|;'.$pawnshop->IAN_FULL_NAME.'@|;';
                    $newBranchArticle->description = '@|;';
                    $newPawnshopArticle->name = '';
                    $newBranchArticle->short_description = '@|;';
                    $newBranchArticle->meta_title = '@|;';
                    $newBranchArticle->meta_description = '@|;';
                    $newBranchArticle->meta_keywords = '@|;';
                    $newBranchArticle->img = '';
                    $newBranchArticle->imgs = '[]';
                    $newBranchArticle->files = '';
                    $newBranchArticle->priority = 0;
                    $newBranchArticle->active = true;
                    $newBranchArticle->date = Carbon::now()->format('Y-m-d H:i:s');
                    $newBranchArticle->category_id = 14;
                    $newBranchArticle->article_id = $newPawnshopArticle->id;
                    $newBranchArticle->save();
                }
            }
        }

        //dd($data);

        return 'transfered';
    }

    /*private function saveDataToFile($filePath, $data, $log = false)
    {
        if ($log) {
            dd($data);
        }
        $fp = fopen($filePath, 'w');
        fwrite($fp, json_encode($data, 256));
        fclose($fp);
    }*/
}
