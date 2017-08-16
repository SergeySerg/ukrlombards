<?php namespace App\Http\Controllers\Backend;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Goutte\Client;
use GuzzleHttp\Client as GuzzleClient;
use Illuminate\Support\Collection;
use Symfony\Component\DomCrawler\Crawler;
use Illuminate\Http\Request;

class ParserController extends Controller {

    public function start() {
        $dataPath     = public_path( 'data.csv' );
        $saveFilePath = public_path( 'test.json' );
        $pawnshopsIds = $this->getBranchesFromFile( $this->csvToArray( $dataPath, ';' ) );
        $testPool = $pawnshopsIds;

        $this->saveDataToFile($saveFilePath, $this->getSiteData($testPool));
        return 'done';
    }
    private function getBranchesFromFile( $dataArray ) {
        return collect( $dataArray )->filter( function ( $node ) {
            return $node['Тип установи'] == 'Ломбард';
        } )->map( function ( $node ) {
            return $node['Код за ЄДРПОУ'];
        } );

    }
    private function csvToArray($filename = '', $delimiter = ',' ) {
        function utf8_fopen_read( $fileName ) {
            $fc     = iconv( 'windows-1251', 'utf-8', file_get_contents( $fileName ) );
            $handle = fopen( "php://memory", "rw" );
            fwrite( $handle, $fc );
            fseek( $handle, 0 );

            return $handle;
        }

        if ( ! file_exists( $filename ) || ! is_readable( $filename ) ) {
            return false;
        }
        $header = null;
        $data   = array();
        if ( ( $handle = utf8_fopen_read( $filename ) ) !== false ) {
            while ( ( $row = fgetcsv( $handle, 1000, $delimiter ) ) !== false ) {
                if ( ! $header ) {
                    $header = $row;
                } else {
                    $data[] = array_combine( $header, $row );
                }
            }
            fclose( $handle );
        }

        return $data;
    }
    private function getSiteData($ids, $type = 6 ) {
        $client = new Client();

        $guzzleClient = new GuzzleClient(array(
            'timeout' => 5,
            'delay' => 3000,
            'http_errors' => false,
        ));
        $client->setClient($guzzleClient);

        $crawler            = $client->request( 'GET', 'http://www.kis.nfp.gov.ua' );
        $_viewState         = $crawler->filter( '#__VIEWSTATE' )->attr( 'value' );
        $_viewStateGenerate = $crawler->filter( '#__VIEWSTATEGENERATOR' )->attr( 'value' );
        $form               = $crawler->selectButton( 'Пошук' )->form();

        $pawnshopsInfo = [];
        foreach ( $ids as $pawnshopCode ) {
            $siteData = $client->submit( $form, [
                'p_EDRPOU'             => $pawnshopCode,
                'p_IRL_FT'             => $type,
                '__VIEWSTATE'          => $_viewState,
                '__VIEWSTATEGENERATOR' => $_viewStateGenerate,
            ]);
            if ( $siteData ) {
                $pawnshopsInfo[] = $this->getPawnshop( $siteData );
            }
        }
        return $pawnshopsInfo;
    }
    private function getPawnshop( Crawler $crawler ) {
        $pawnshopData = collect( [] );
        $shop         = $crawler->filter( '.t11ReportsRegion100Width .grid td' );

        if ( $shop ) {
            $shop->each( function ( Crawler $node, $i ) use ( &$pawnshopData ) {
                if ( $node->filter( 'a' )->count() ) {
                    $pawnshopData[$node->attr( 'headers' )] = 'http://www.kis.nfp.gov.ua' . $node->filter( 'a' )->attr( 'href' );
                    return;
                }
                //Якщо філал без ссилки
                if ( $node->attr( 'headers' ) =='FILIALS' & !$node->filter( 'a' )->count() ) {
                    $pawnshopData[$node->attr( 'headers' )] = null;
                    return;
                }
                $pawnshopData[$node->attr( 'headers' )] = $node->text();
            } );
            if ( $this->isBranches( $pawnshopData ) ) {
                //if ( false) {
                sleep( 1);
                $branch_url                   = $this->getBranchFromPawnshop( $pawnshopData );
                $pawnshopData['filials_data'] = $this->getPawnshopBranch( $branch_url );
            }
            return $pawnshopData;
        }

        return null;

    }
    private function isBranches( Collection $pawnshopData ) {
        if ( ! empty( $this->getBranchFromPawnshop( $pawnshopData ) ) ) {
            return true;
        }

        return false;
    }
    private function getBranchFromPawnshop( Collection $pawnshopData ) {
        return $pawnshopData->get( 'FILIALS' );
    }
    private function getPawnshopBranch( $url ) {
        $client = new Client();
        $guzzleClient = new GuzzleClient(array(
            'timeout' => 5,
            'delay' => 3000,
            'http_errors' => false,
        ));
        $client->setClient($guzzleClient);

        $crawler  = $client->request( 'GET', $url );
        $branches = collect( [] );
        $getBranches = $crawler->filter( '.zebra tr' );
        if($getBranches){
            $getBranches->each( function ( Crawler $node, $i ) use ( &$branches, &$branchesTableColumnNames ) {
                if ( $i === 0 ) {
                    $node->filter( 'th' )
                        ->each( function ( Crawler $node, $i ) use ( &$branchesTableColumnNames ) {
                            $branchesTableColumnNames[$i] = $node->attr( 'id' );
                        } );

                    return;
                }
                $branchItem = [];
                $node->filter( 'td' )
                    ->each( function ( Crawler $node, $i ) use ( &$branchItem, $branchesTableColumnNames ) {
                        if ( $node->filter( 'a' )->count() ) {
                            $branchItem[$branchesTableColumnNames[$i]] = $node->getBaseHref() . $node->filter( 'a' )->attr( 'href' );

                            return;
                        }
                        $branchItem[$branchesTableColumnNames[$i]] = $node->text();
                    } );
                $branches[] = $branchItem;
            } );

            return $branches;
        }
        return null;
    }
    private function saveDataToFile($filePath,$data){
        $fp = fopen($filePath, 'w');
        fwrite($fp,json_encode($data,256));
        fclose($fp);
    }
}
