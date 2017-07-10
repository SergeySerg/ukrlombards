<!DOCTYPE html>
<html lang="{{ App::getLocale() }}">
<head>
	<meta charset="utf-8">
	<title>@if($categories_data[$type]->getTranslate('meta_title')){{ $categories_data[$type]->getTranslate('meta_title') }} @else FLEX-WEB @endif</title>
	<meta name="description" content="@if($categories_data[$type]->getTranslate('meta_description')){{ $categories_data[$type]->getTranslate('meta_description') }} @else FLEX-WEB - студія створення сайтів  @endif">
	<meta name="keywords" content="@if($categories_data[$type]->getTranslate('meta_keywords')){{ $categories_data[$type]->getTranslate('meta_keywords') }} @else FLEX-WEB @endif">

	{{-- CSS --}}
	<meta name="viewport" content="width=device-width, initial-scale=1.0">


	<link rel="shortcut icon" href="{{ asset('/img/favicon/favicon.ico') }}?ver={{ $version }}" type="image/x-icon">
	<link rel="apple-touch-icon" href="{{ asset('/img/favicon/apple-touch-icon.png') }}?ver={{ $version }}">
	<link rel="apple-touch-icon" sizes="72x72" href="{{ asset('img/favicon/apple-touch-icon-72x72.png') }}?ver={{ $version }}">
	<link rel="apple-touch-icon" sizes="114x114" href="{{ asset('/img/favicon/apple-touch-icon-114x114.png') }}?ver={{ $version }}">


	<link href="{{ asset('/libs/normalize.css/normalize.css') }}" rel="stylesheet" type="text/css" media="all">
	<link href="{{ asset('/libs/bootstrap-grid-only/css/grid12.css') }}" rel="stylesheet" type="text/css" media="all">
	<link href="{{ asset('/libs/owl-carousel/owl.carousel.css') }}" rel="stylesheet" type="text/css" media="all" />
	<link href="{{ asset('/libs/owl-carousel/owl.theme.css') }}" rel="stylesheet" type="text/css" media="all" />
	<link href="{{ asset('/css/frontend/fonts.css') }}" rel="stylesheet" type="text/css" media="all" />
	<link href="{{ asset('/css/frontend/font-awesome.min.css') }}" rel="stylesheet" type="text/css" media="all" />
	<link href="{{ asset('/css/frontend/main.css') }}?ver={{ $version }}" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="{{ asset('/css/plugins/sweetalert.css') }}">
	{{-- /CSS --}}


	{{--<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>--}}

</head>

<body>
<header class="header">

	<div class="container">
		<div class="row">
			<div class="col-md-9">

				<div class="logo-wrap">
					<a href="/{{ App::getLocale() }}">
						<img src="{{ asset('/img/frontend/logo.png') }}" alt="FlexWeb">
						<div class="logo-text-wrap">
							<div class="logo-name"><span class="logo-name_first">flex</span>-web</div>
							<div class="logo-description">{{ trans('base.names') }}</div>
						</div>
					</a>
				</div>
				<div class="button-menu"><div class="menu icon"></div>{{ trans('base.menu') }}</div>
				<nav class="nav">
					<a class="nav_item  @if(Request::is(App::getLocale())) active @endif" href="/{{ App::getLocale() }}">{{ trans('base.main') }}</a>
					@if( count($services) !== 0 AND $categories_data['services']->active == 1)
						<a class="nav_item @if(Request::is('*/services')) active @endif" href="/{{ App::getLocale() }}/services">{{ trans('base.services') }}</a>
					@endif
					@if( count($news) !== 0 AND $categories_data['news']->active == 1)
						<a class="nav_item @if(Request::is('*/news')) active @endif" href="/{{ App::getLocale() }}/news">{{ trans('base.news') }}</a>
					@endif
					@if( count($portfolio) !== 0 AND $categories_data['portfolio']->active == 1)
						<a class="nav_item @if(Request::is('*/portfolio')) active @endif" href="/{{ App::getLocale() }}/portfolio">{{ trans('base.portfolio') }}</a>
					@endif
					<a class="nav_item @if(Request::is('*/contacts')) active @endif" href="/{{ App::getLocale() }}/contact">{{ trans('base.contacts') }}</a>
				</nav>

			</div>

			<div class="col-md-3">

				<ul class="lang clearfix">
					@foreach($langs as $lang)
						<li class="lang_item-wrap"><span class='lang_item @if(App::getLocale() == $lang->lang)active @endif'><a href="{{str_replace(url(App::getLocale()), url($lang->lang), Request::url())}}">{{$lang->lang}}</a></span></li>
					@endforeach
				</ul>
				<div class="contact-show">
					<div class="phone active"><div class="arrow-bottom"></div>{{--{{$texts->get('telephone')}}--}}
						<img src="{{ asset('/img/frontend/phone.png') }}" alt="">
					</div>
					<div class="map"><div class="arrow-bottom"></div>{{$texts->get('address')}}</div>
					<div class="mail"><div class="arrow-bottom"></div>{{$texts->get('email')}}</div>
				</div>
				<ul class="contact clearfix">
					<li class="contact_item-wrap"><i class="fa fa-phone fa-2x active" data-contact="phone" aria-hidden="true"></i></li>
					<li class="contact_item-wrap"><i class="fa fa-map-marker fa-2x"  data-contact="map" aria-hidden="true"></i></li>
					<li class="contact_item-wrap"><i class="fa fa-envelope-o fa-2x"  data-contact="mail" aria-hidden="true"></i></li>
				</ul>

			</div>
		</div>
	</div>

</header>

@yield('content')

<footer class="footer">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="logo-wrap logo-wrap_footer">
					<a href="/{{ App::getLocale() }}">
						<img src="{{ asset('/img/frontend/logo_ft.png') }}" alt="FlexWeb">
						<div class="logo-text-wrap">
							<div class="logo-name logo-name_footer"><span class="logo-name_first logo-name_first__footer">flex</span>-web</div>
							<div class="logo-description logo-description_footer">{{ trans('base.names') }}</div>
						</div>
					</a>
				</div>
				<div class="footer-nav">
					<a class="footer-nav_item active" href="/{{ App::getLocale() }}">{{ trans('base.main') }}</a>
					@if( count($services) !== 0 AND $categories_data['services']->active == 1)
						<a class="footer-nav_item" href="/{{ App::getLocale() }}/services">{{ trans('base.services') }}</a>
					@endif
					@if( count($news) !== 0 AND $categories_data['news']->active == 1)
						<a class="footer-nav_item" href="/{{ App::getLocale() }}/news">{{ trans('base.news') }}</a>
					@endif
					@if( count($portfolio) !== 0 AND $categories_data['portfolio']->active == 1)
						<a class="footer-nav_item" href="/{{ App::getLocale() }}/portfolio">{{ trans('base.portfolio') }}</a>
					@endif
					<a class="footer-nav_item" href="/{{ App::getLocale() }}/contacts">{{ trans('base.contacts') }}</a>
				</div>
				<ul class="footer-soc">
					@if( count($social) !== 0 AND $categories_data['social']->active == 1)
						@foreach($social as $social_item)
							<li class="footer-soc_item"><a href="{{$social_item->getAttributeTranslate('Ссилка') ? $social_item->getAttributeTranslate('Ссилка') : '#' }}">{!!$social_item->getAttributeTranslate('Иконка') ? $social_item->getAttributeTranslate('Иконка') : ' ' !!}</a></li>
						@endforeach
					@endif
				</ul>
				<span class="copyright">© Copyright 2017</span>
			</div>
		</div>
	</div>
</footer>


<div id="callback" style="display: none;">
	<div class="close"></div>
	<h1 class="title section-title section-title_service-form">{{ trans('base.callback_ring') }}</h1>
	<form action="" id="callback-popup" class="callback" method="post">
		<input type="text" name="name" placeholder="{{ trans('base.name') }}">
		<input type="number" name="phone" placeholder="{{ trans('base.tel') }}">
		<textarea rows="8" name="text" placeholder="{{ trans('base.message') }}"></textarea>
		<input type="hidden" name="_token" value="{{csrf_token()}}"/>
		<input type="hidden" name="url" value="/{{ App::getLocale() }}/callback"/>
		<button type="submit" id="submit-send" class="btn_send">{{ trans('base.send') }}</button>
	</form>
</div>

<div id="overlay"></div><!-- Пoдлoжкa -->

{{--Файл переводов--}}

<script>
	var trans = {
		'base.success': '{{ trans('base.success_send_contact') }}',
		'base.error': '{{ trans('base.error_send_contact') }}',
	};
</script>
{{--Файл переводов--}}
{{-- JS --}}
	<script src="{{ asset('/libs/jquery/dist/jquery.min.js') }}"></script>

	<script src="{{ asset('/libs/owl-carousel/owl.carousel.min.js') }}"></script>
	<script src="{{ asset('/js/plugins/sweetalert.min.js') }}"></script>
	<script src="http://azmind.com/demo/andia-agency/v2-1/assets/js/wow.min.js" type="application/javascript"></script>
	<link href="http://azmind.com/demo/andia-agency/v2-1/assets/css/animate.css" rel="stylesheet">
<script src="{{ asset('/js/frontend/common.js') }}?ver={{ $version }}"></script>
<script>
		new WOW().init();
	</script>
{{-- JS --}}
</body>
</html>