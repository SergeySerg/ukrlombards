@extends('ws-app')

@section('content')
    @if( count($portfolio) !== 0 AND $categories_data['portfolio']->active == 1)
        <div class="container">
            <div class="page-wrap">
                <div class="page-header">
                    <div class="row">
                        <div class="col-md-12">
                            <a href="javascript:history.go(-1)" class="btn-back">{{ trans('base.back') }}</a>
                        </div>
                        <div class="col-md-12">
                            <h2 class="section_title section_title__contact-page">{{ $categories_data['portfolio']->getTranslate('title') }}</h2>
                            <div class="section-title_bg"></div>
                        </div>
                    </div>
                </div>
                <div class="row page-content">
                    <div class="col-md-12 center">
                        <ul class="portfolio-type">
                            <li class="portfolio-type_item active" data-portfolio-type="all">{{ trans('base.all') }}</li>
                            <?php
                            $arr = [];
                            foreach ($portfolio as $portfolio_item) {
                                if ($portfolio_item->getAttributeTranslate('Відношення до категорії сайту')) {
                                    $arr[] = $portfolio_item->getAttributeTranslate('Відношення до категорії сайту');
                                }
                            }
                            //print_r($arr);
                            $unique_arr = array_unique($arr);
                            ?>
                            @foreach($unique_arr as $item)
                                <li class="portfolio-type_item" data-portfolio-type="{{ $item }}">{{ $item }}</li>
                            @endforeach
                        </ul>
                    </div>

                    @foreach($portfolio as $portfolio_item)
                        <div class="col-xs-12 col-sm-6 col-md-4"
                             data-category="{{ $portfolio_item->getAttributeTranslate('Відношення до категорії сайту') }}">
                            <a href="{{ asset($portfolio_item->getAttributeTranslate('Посилання на сайт')) }}" class="portfolio_item" target="_blank">
                                <div class="portfolio_item__img" style="background-image: url('{{ asset($portfolio_item->getAttributeTranslate('Головна картинка')) }}');"
                                     alt="{{ $portfolio_item->getTranslate('title') }}">
                                    <div class="portfolio_item-description">
                                        <h2 class="section_title portfolio-item_description-title">{{ $portfolio_item->getTranslate('title') }}</h2>

                                        <div class="portfolio_item-description-text">
                                            {!! $portfolio_item->getTranslate('short_description') !!}
                                        </div>

                                    </div>
                                </div>
                            </a>
                        </div>
                    @endforeach

                </div>
            </div>
        </div>
    @endif
@endsection
