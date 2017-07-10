@extends('ws-app')

@section('content')
    @if( count($news) !== 0 AND $categories_data['news']->active == 1)
        <div class="container">
            <div class="page-wrap">
                <div class="page-header">
                    <a href="javascript:history.go(-1)" class="btn-back btn-back_news">{{ trans('base.back') }}</a>
                        @for ($i=0; $i < 1; $i++)
                            <div class="row top-news_wrap">
                                <div class="col-md-12">
                                    <h2 class="section_title section_title__top-news-item">
                                        <div class="news-date">
                                            <div class="news-date_day">{{ date("d", strtotime($news[$i]->date))  }}</div><div class="news-date_month">{{ date("M", strtotime($news[$i]->date)) }}</div>
                                        </div>
                                        {{ $news[$i]->getTranslate('title') }}
                                    </h2>
                                    <div class="section-title_bg section-title_bg__news"></div>
                                    <div class="top-news_description-wrap">
                                        <img class="top-news_img" src="{{ asset( $news[$i]->getAttributeTranslate('Картинка новини')) }}" alt="{{ $news[$i]->getTranslate('title') }}">
                                        <div class="top-news_description">
                                            {!! str_limit($news[$i]->getTranslate('description'),1100,'...' )!!}
                                            <a class="more" href="/{{ App::getLocale() }}/news/{{$news[$i]->id}}">{{ trans('base.more') }}</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endfor
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="section_title section_title__news-page">{{ $categories_data['news']->getTranslate('title') }}</h2>
                            <div class="section-title_bg section-title_bg"></div>
                        </div>
                    </div>
                </div>
                <div class="row page-content">

                    @foreach($news as $new)
                        <div class="col-xs-12 col-sm-6 col-md-4">
                            <a href="/{{ App::getLocale() }}/news/{{$new->id}}" class="services_item news_item">
                                <img class="services_item__img"
                                     src="{{ asset( $new->getAttributeTranslate('Картинка новини')) }}"
                                     alt="{{ $new->getTranslate('title') }}">
                                <h4 class="services_item__title news_item__title page-news_item__title">
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
@endsection
