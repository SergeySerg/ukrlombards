@extends('ws-app')

@section('content')
    @if( count($services) !== 0 AND $categories_data['services']->active == 1)
        <div class="container">
            <div class="page-wrap">
                <div class="page-header">
                    <div class="row">
                        <div class="col-md-12">
                            <a href="javascript:history.go(-1)" class="btn-back">{{ trans('base.back') }}</a>
                        </div>
                    </div>
                    @foreach($services as $key =>$service )
                        <div class="service-item" data-service="{{ $key }}">
                            <div class="row service-title_wrap">
                                <div class="col-md-12">
                                    <h2 class="section_title section_title__services-item makeup-title">{{ $service->getTranslate('title') }}</h2>
                                    <div class="section-title_bg section-title_bg__services"></div>
                                </div>
                            </div>
                            <div class="row service-title-content_wrap">
                                <div class="col-xs-12 col-sm-12 col-md-12">
                                    <img class="page-header_content__img" src="{{ asset( $service->getAttributeTranslate('Картинка послуги')) }}" alt="{{ $service->getTranslate('title') }}">
                                    <div class="service-item_description">
                                        {!! $service->getTranslate('description') !!}
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
                <div class="page-header page-header_services">
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="section_title section_title__services-page">{{ $categories_data['services']->getTranslate('title') }}</h2>
                            <div class="section-title_bg section-title_bg"></div>
                        </div>
                    </div>
                </div>
                <div class="row page-content">
                    @foreach($services as $key =>$service )
                        <div class="col-xs-12 col-sm-6 col-md-4">
                            <a href="#" class="services_item" data-service-id="{{ $key }}">
                                <img class="services_item__img" src="{{ asset( $service->getAttributeTranslate('Картинка послуги')) }}" alt="{{ $service->getTranslate('title') }}">
                                <h4 class="services_item__title">{{ $service->getTranslate('title') }}</h4>
                                <div class="services_item__description">{!! $service->getTranslate('short_description') !!}
                                </div>
                            </a>
                        </div>
                    @endforeach
                 </div>
            </div>
        </div>
    @endif
@endsection
