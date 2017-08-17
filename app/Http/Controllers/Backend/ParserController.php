<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\ParsedData;
use Carbon\Carbon;
use Goutte\Client;
use GuzzleHttp\Client as GuzzleClient;
use Symfony\Component\DomCrawler\Crawler;

class ParserController extends Controller
{

    private $dataPath;
    private $saveFilePath;
    private $parserSettings;
    private $log;
    private $limit;
    private $getBranches;
    private $saveToFile;
    public function __construct()
    {
        $this->dataPath = public_path('data.csv');
        $this->saveFilePath = public_path('test.json');
        $this->parserSettings = [
            'timeout'     => 10,
            'delay'       => rand(2000, 3000),
            'http_errors' => false,
        ];
        $this->getBranches = true; // true = разом з філіалами, false = без
        $this->log = false; //if true -> dd($result), false = to file
        $this->limit = 10; //parsing limit
        $this->saveToFile = false; //false == DB, TRUE ==file
    }
    public function start()
    {
        $pawnshopsIds = $this->getBranchesFromFile($this->csvToArray($this->dataPath, ';'));
        $checkData = ParsedData::all();
        $checkData = $checkData->map(
            function ($item) {
                return $item['IM_NUMIDENT'];
            }
        );

        dd([
            'сохранено' => count($checkData),
            'в файле' => count($pawnshopsIds),
            'new' => count($pawnshopsIds->diff($checkData)),
        ]);
        $testPool = $pawnshopsIds->take($this->limit);
        $testPool = $pawnshopsIds->diff($checkData);
        if ($this->saveToFile) {
            $this->saveDataToFile($this->saveFilePath, $this->getSiteData($testPool), $this->log);
        } else {
            $this->getSiteData($testPool);
        }

        return 'done';
    }
    private function getBranchesFromFile($dataArray)
    {
        return collect($dataArray)->filter(
            function ($node) {
                return $node['Тип установи'] == 'Ломбард';
            }
        )->map(
            function ($node) {
                return $node['Код за ЄДРПОУ'];
            }
        );

    }
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
        $data = array();
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
    private function getSiteData($ids, $type = 6)
    {
        $client = new Client();

        $guzzleClient = new GuzzleClient($this->parserSettings);
        $client->setClient($guzzleClient);

        $crawler = $client->request('GET', 'http://www.kis.nfp.gov.ua');
        $_viewState = $crawler->filter('#__VIEWSTATE')->attr('value');
        $_viewStateGenerate = $crawler->filter('#__VIEWSTATEGENERATOR')->attr('value');
        $form = $crawler->selectButton('Пошук')->form();

        $pawnshopsInfo = [];
        foreach ($ids as $pawnshopCode) {
            $siteData = $client->submit(
                $form,
                [
                    'p_EDRPOU'             => $pawnshopCode,
                    'p_IRL_FT'             => $type,
                    '__VIEWSTATE'          => $_viewState,
                    '__VIEWSTATEGENERATOR' => $_viewStateGenerate,
                ]
            );
            if ($siteData) {
                $pawnshopsInfo = $this->getPawnshop($siteData);
                $this->saveDataToDB($pawnshopsInfo,false);
            }


        }

        return $pawnshopsInfo;
    }
    private function getPawnshop(Crawler $crawler)
    {
        $pawnshopData = collect([]);
        $shop = $crawler->filter('.t11ReportsRegion100Width .grid td');

        if ($shop) {
            $shop->each(
                function (Crawler $node) use (&$pawnshopData) {
                    if ($node->filter('a')->count()) {
                        $pawnshopData[$node->attr('headers')] = 'http://www.kis.nfp.gov.ua'.$node->filter('a')->attr(
                                'href'
                            );

                        return;
                    }
                    //Якщо філал без ссилки
                    if ($node->attr('headers') == 'FILIALS' & !$node->filter('a')->count()) {
                        $pawnshopData[$node->attr('headers')] = null;

                        return;
                    }
                    $pawnshopData[$node->attr('headers')] = $node->text();
                }
            );

            if ($this->isBranches($pawnshopData) && $this->getBranches == true) {
                $branch_url = $this->getBranchFromPawnshop($pawnshopData);
                $pawnshopData['filials_data'] = $this->getPawnshopBranch($branch_url);
            }

            return $pawnshopData;
        }

        return null;

    }
    private function isBranches($pawnshopData)
    {
        if (!empty($this->getBranchFromPawnshop($pawnshopData))) {
            return true;
        }

        return false;
    }
    private function getBranchFromPawnshop($pawnshopData)
    {
        return $pawnshopData->get('FILIALS');
    }
    private function getPawnshopBranch($url)
    {
        $client = new Client();
        $guzzleClient = new GuzzleClient($this->parserSettings);
        $client->setClient($guzzleClient);

        $crawler = $client->request('GET', $url);
        $branches = collect([]);
        $getBranches = $crawler->filter('.zebra tr');
        if ($getBranches) {
            $getBranches->each(
                function (Crawler $node, $i) use (&$branches, &$branchesTableColumnNames) {
                    if ($i === 0) {
                        $node->filter('th')->each(
                            function (Crawler $node, $i) use (&$branchesTableColumnNames) {
                                $branchesTableColumnNames[$i] = $node->attr('id');
                            }
                        );

                        return;
                    }
                    $branchItem = [];

                    $node->filter('td')->each(
                        function (Crawler $node, $i) use (&$branchItem, $branchesTableColumnNames) {
                            if ($node->filter('a')->count()) {
                                $branchItem[$branchesTableColumnNames[$i]] = 'http://www.kis.nfp.gov.ua'.$node->filter(
                                        'a'
                                    )->attr('href');

                                return;
                            }
                            $branchItem[$branchesTableColumnNames[$i]] = $node->text();
                        }
                    );

                    $branches[] = $branchItem;
                }
            );

            return $branches;
        }

        return null;
    }
    private function saveDataToFile($filePath, $data, $log = false)
    {
        if ($log) {
            dd($data);
        }
        $fp = fopen($filePath, 'w');
        fwrite($fp, json_encode($data, 256));
        fclose($fp);
    }
    private function saveDataToDB($data, $log = false)
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
        if ($data['FILIALS'] != null) {   //if($pawnshop->contains('filials_data') && !empty($pawnshop['filials_data'])){
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
}
