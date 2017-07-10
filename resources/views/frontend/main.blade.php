@extends('ws-app')

@section('content')

    <div class="container">
        <div class="row">
            {{--Slider section--}}
            @if( count($slider) !== 0 AND $categories_data['slider']->active == 1)

                <div class="section-slider">
                    <div class="owl-carousel">
                        @foreach($slider as $slider_item)
                            <div>
                                <div class="col-md-6">
                                    <div class="slide_img-wrap center">
                                        <img class="slide-img"
                                             src="{{ asset( $slider_item->getAttributeTranslate('Слайд')) }}"
                                             alt="{{ $slider_item->getTranslate('title') }}">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="slide_description-wrap">
                                        <div class="slide-name">{{ $slider_item->getTranslate('title') }}</div>
                                        <div class="slide_main-description">{!! $slider_item->getTranslate('short_description') ? $slider_item->getTranslate('short_description') : " "  !!}</div>
                                        <div class="slide_description">{!! $slider_item->getTranslate('description') ? $slider_item->getTranslate('description') : " "  !!}</div>
                                        <button class="order callback-popup">{{ trans('base.order') }}</button>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>

            @endif
            {{--/Slider section--}}
        </div>
    </div>
    <section class="section-slider_bg"></section>
    <div class="section_services">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <ul class="soc">
                        {{--Social section--}}
                        @if( count($social) !== 0 AND $categories_data['social']->active == 1)

                            @foreach($social as $social_item)
                                <li class="soc_item">
                                    <a
                                            href="{{$social_item->getAttributeTranslate('Ссилка') ? $social_item->getAttributeTranslate('Ссилка') : '#' }}">{!!$social_item->getAttributeTranslate('Иконка') ? $social_item->getAttributeTranslate('Иконка') : ' ' !!}</a>
                                </li>
                            @endforeach

                        @endif
                    </ul>
                </div>
                {{--/Social section--}}
                {{--Services section--}}
                @if( count($services) !== 0 AND $categories_data['services']->active == 1)

                    <div class="col-md-12">
                        <div class="all-items_wrap"><a href="/{{ App::getLocale() }}/services"
                                                       class="all-items  all-services retina">{{ trans('base.all_services') }}</a>
                        </div>
                        <h2 class="section_title section_title__services retina">{{ $categories_data['services']->getTranslate('title') }}</h2>

                        <h3 class="section_description">{!! $categories_data['services']->getTranslate('short_description') !!}</h3>
                    </div>
                    @foreach($services as $service)
                        <div class="col-xs-12 col-sm-6 col-md-4">
                            <a href="/{{ App::getLocale() }}/services/{{$service->id}}" class="services_item">
                                <img class="services_item__img"
                                     src="{{ asset( $service->getAttributeTranslate('Картинка послуги')) }}"
                                     alt="{{ $service->getTranslate('title') }}">
                                <h4 class="services_item__title">{{ $service->getTranslate('title') }}</h4>

                                <div class="services_item__description">{!! $service->getTranslate('short_description') !!}
                                </div>
                            </a>
                        </div>
                    @endforeach

                @endif
                {{--/Services section--}}

            </div>
        </div>

    </div>

    {{--News section--}}
    @if( count($news) !== 0 AND $categories_data['news']->active == 1)

        <div class="section_news">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="all-items_wrap">
                            <a href="/{{ App::getLocale() }}/news" class="all-items all-news retina">{{ trans('base.all_news') }}</a>
                        </div>
                        <h2 class="section_title section_title__news retina">{{ $categories_data['news']->getTranslate('title') }}</h2>
                        <h3 class="section_description section_description__white">{!! $categories_data['news']->getTranslate('short_description') !!}</h3>
                    </div>
                    @foreach($news as $new)
                        <div class="col-xs-12 col-sm-6 col-md-4">
                            <a href="/{{ App::getLocale() }}/news/{{$new->id}}" class="services_item news_item">
                                <div class="services_item__img-wrap">
                                    <img class="services_item__img"
                                         src="{{ asset( $new->getAttributeTranslate('Картинка новини')) }}"
                                         alt="{{ $new->getTranslate('title') }}">
                                </div>
                                <h4 class="services_item__title news_item__title">
                                    <div class="news-date">
                                        <div class="news-date_day">{{ date("d", strtotime($new->date))  }}</div>
                                        <div class="news-date_month">{{ date("M", strtotime($new->date)) }}</div>
                                    </div>
                                    {{ $new->getTranslate('title') }}
                                </h4>
                                <div class="services_item__description news_item__description">{!! $new->getTranslate('short_description') !!}</div>
                                <button class="news-button">{{ trans('base.more') }}</button>
                            </a>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>

    @endif
    {{--/News section--}}
    {{--Portfolio section--}}
    @if( count($portfolio) !== 0 AND $categories_data['portfolio']->active == 1)

        <div class="section_portfolio">

            <div class="container">
                <div class="row">

                    <div class="col-md-12">
                        <div class="all-items_wrap"><a href="/{{ App::getLocale() }}/portfolio"
                                                       class="all-items  all-portfolio retina">{{ trans('base.all_portfolio') }}</a>
                        </div>
                        <h2 class="section_title section_title__portfolio retina">{{ $categories_data['portfolio']->getTranslate('title') }}</h2>

                        <h3 class="section_description">{!! $categories_data['portfolio']->getTranslate('short_description') !!} </h3>
                    </div>

                    <div class="col-md-12">
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
    {{--/Portfolio section--}}
    <div class="section_slogan">

        <div class="container">
            <div class="row">

                <div class="col-md-12">
                    <img class="slogan-img_bg" src="{{ asset('/img/frontend/slogan_bg.png') }}" alt="Slogan">
                    <img class="slogan-img_pc" src="{{ asset('/img/frontend/slogan_pc.png') }}" alt="Slogan">

                    <div class="col-md-offset-3 col-md-9 col-sm-offset-2 col-sm-10 col-xs-12">
                        <h1 class="slogan">{{$texts->get('slogan')}}</h1>
                        <button class="slogan_btn callback-popup">{{ trans('base.order') }}</button>
                    </div>
                </div>

            </div>
        </div>

    </div>
    @if( count($reviews) !== 0 AND $categories_data['reviews']->active == 1)
        <div class="section_reviews">

        <div class="container">
            <div class="row">

                <div class="col-md-12">
{{--
                    <div class="all-items_wrap"><a href="#" class="all-items all-reviews retina">{{ trans('base.all_reviews') }}</a></div>
--}}
                    <h2 class="section_title section_title__reviews retina">{{ $categories_data['reviews']->getTranslate('title') }}</h2>

                    <h3 class="section_description">{!! $categories_data['reviews']->getTranslate('short_description') !!}</h3>
                </div>
                <div class="col-md-12">
                    <div class="owl-carousel">
                        @foreach($reviews as $review )
                            <div class="reviews-item clearfix">
                                <div class="col-xs-12 col-sm-4 col-md-3">
                                    <div class="reviews-item_photo"
                                         style="background-image: url('{{ asset($review->getAttributeTranslate('Фото клієнта')) }}');"></div>
                                </div>
                                <div class="col-xs-12 col-sm-8 col-md-9">
                                    <span class="reviews-item_author-name">{{ $review->getAttributeTranslate('Ім\'я клієнта') }} </span>
                                    <span class="reviews-item_author-position">{{ $review->getAttributeTranslate('Посада клієнта') }}</span>

                                    <div class="reviews-item_text">
                                        {!! $review->getTranslate('short_description') !!}
                                    </div>
                                </div>
                            </div>
                        @endforeach

                        
                    </div>
                </div>
            </div>
        </div>

    </div>
    @endif
    <div class="section_customers">
        {{--/Clients section--}}
        @if( count($clients) !== 0 AND $categories_data['clients']->active == 1)
            <div class="container">
            <div class="row">

                <div class="col-md-12">
{{--
                    <div class="all-items_wrap"><a href="#" class="all-items all-customers retina">{{ trans('base.all_clients') }}</a></div>
--}}
                    <h2 class="section_title section_title__customers retina">{{ $categories_data['clients']->getTranslate('title') }}</h2>

                    <h3 class="section_description">{!! $categories_data['clients']->getTranslate('short_description') !!}</h3>
                </div>
                @foreach( $clients as $client )
                    <div class="col-xs-6 col-sm-6 col-md-4">
                        <div class="customers_item"><img class="customers_item__img" src="{{ asset($client->getAttributeTranslate('Картинка клієнта')) }}" alt=""
                                                         class="customer_img"></div>
                    </div>
                @endforeach


            </div>
        </div>
        @endif
        {{--/Clients section--}}
    </div>
    {{--@endif--}}



@endsection