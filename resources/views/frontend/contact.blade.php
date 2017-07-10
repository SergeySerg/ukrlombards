@extends('ws-app')

@section('content')
    <div class="container">
        <div class="page-wrap">
            <div class="page-header">
                <div class="row">
                    <div class="col-md-12">
                        <a href="javascript:history.go(-1)" class="btn-back">{{ trans('base.back') }}</a>
                    </div>
                    <div class="col-md-12">
                        <h2 class="section_title section_title__contact-page">{{ $categories_data['contact']->getTranslate('title') }}</h2>
                        <div class="section-title_bg"></div>
                    </div>
                </div>
            </div>
            <div class="row page-content">
                <div class="col-md-7">
                    <div class="contact-map">
                        <iframe src="{{ $texts->get('maps') }}" width="100%" height="100%" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="address-block">
                        <div class="address">{{ $texts->get('address') }}</div>
                        {{ $texts->get('telephone') }} <br>
                        {{ $texts->get('telephone_two') }} <br>
                        {{ $texts->get('email') }}
                    </div>
                    <h3 class="callback-name">{{ trans('base.callback_ring') }}</h3>
                    <form action="" id="contact-callback" method="post" class="callback">
                        <input type="text" name='name' placeholder="{{ trans('base.name') }}">
                        <input type="email" name='email' placeholder="E-mail">
                        <textarea id="" rows="7" name="text" placeholder="{{ trans('base.question') }}"></textarea>
                        <input type="hidden" name="_token" value="{{csrf_token()}}"/>
                        <input type="hidden" name="url" value="/{{ App::getLocale() }}/contact"/>
                        <button class="btn_send" id="send">{{ trans('base.send') }}</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
