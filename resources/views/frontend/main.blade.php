@extends('ws-app')

@section('content')



    <div id="inSlider" class="carousel carousel-fade" data-ride="carousel">
        <ol class="carousel-indicators">
            @foreach($slider as $key => $slider_item)
                <li data-target="#inSlider" data-slide-to="{{ $key }}" @if($key == 0) class="active" @endif></li>
            @endforeach
        </ol>
        <div class="carousel-inner" role="listbox">
            @foreach($slider as $key => $slider_item)
                <div class="item @if($key == 0) active @endif">
                <div class="container">
                    <div class="carousel-caption">
                        <h1>{{ $slider_item->getTranslate('title') }}</h1>
                        {!! $slider_item->getTranslate('short_description') ? $slider_item->getTranslate('short_description') : " "  !!}
                        <p>
                            <a class="btn btn-lg btn-primary" target="_blank" href="{{$slider_item->getAttributeTranslate('Ссылка на кнопке') ? $slider_item->getAttributeTranslate('Ссылка на кнопке') : '#' }}" role="button">{{$slider_item->getAttributeTranslate('Текст в кнопке') ? $slider_item->getAttributeTranslate('Текст в кнопке') : ' ' }}</a>
                        </p>
                    </div>
                    <div class="carousel-image wow zoomIn">
                        <img src="{{ asset( $slider_item->getAttributeTranslate('Картинка слайда')) }}" alt="{{ $slider_item->getTranslate('title') }}"/>
                    </div>
                </div>
                <!-- Set background for slide in css -->
                <div class="header-back one" style="background-image: url('/img/money.jpg');"></div>

            </div>
            @endforeach
        </div>
        <a class="left carousel-control" href="#inSlider" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#inSlider" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <section class="features">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="navy-line"></div>
                    <h1>{{ $texts->get('сaption') }}</h1>
                    <p>{{ $texts->get('short-description') }}</p>
                </div>
            </div>
            <div class="row">
                @foreach($pawnshop as $pawnshop_item)
                    <div class="col-lg-6 features-text">
                        <a href="/{{ App::getLocale() }}/pawnshop/{{$pawnshop_item->id}}" class="lombard-item clearfix">
                            <div class="flex_img-wrap pull-left"><img src="{{ asset( $pawnshop_item->getAttributeTranslate('Логотип') ? $pawnshop_item->getAttributeTranslate('Логотип') : "upload/articles/no-img.png") }}" alt="{{ $pawnshop_item->getTranslate('title') }}"></div>
                            <small>Код ЄДРПОУ: {{ $pawnshop_item->getAttributeTranslate('Код ЄДРПОУ') }}</small>
                            <h2>{{ $pawnshop_item->getTranslate('title') }}</h2>
                            <small>{{ $pawnshop_item->getAttributeTranslate('Міжміський телефонний код') ? '('. $pawnshop_item->getAttributeTranslate('Міжміський телефонний код') . ')' : " "   }} {{ $pawnshop_item->getAttributeTranslate('Телефон') }}</small>
                            {!! $pawnshop_item->getAttributeTranslate('Адреса') ? $pawnshop_item->getAttributeTranslate('Адреса') : " "  !!}
                            <small>{{ $pawnshop_item->getAttributeTranslate('E-mail') }}</small>
                        </a>
                    </div>
                @endforeach

            </div>

        </div>

    </section>




@endsection