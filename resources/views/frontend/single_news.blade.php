@extends('ws-app')

@section('content')
    <div class="col-xs-12 col-sm-6 col-md-4">
            <img class="services_item__img"
                 src="{{ asset( $article->getAttributeTranslate('Картинка новини')) }}"
                 alt="{{ $article->getTranslate('title') }}">
            <h4 class="services_item__title news_item__title page-news_item__title">
                <div class="news-date">
                    <div class="news-date_day">{{ date("d", strtotime($article->date))  }}</div>
                    <div class="news-date_month">{{ date("M", strtotime($article->date)) }}</div>
                </div>
                {{ $article->getTranslate('title') }}
            </h4>
            <div class="services_item__description news_item__description">{!! $article->getTranslate('description') !!}</div>

    </div>
@endsection
