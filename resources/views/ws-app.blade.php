<!DOCTYPE html>
<html lang="{{ App::getLocale() }}">
<head>
	<meta charset="utf-8">
	<title>Ломбарди</title>
{{--	<title>@if($categories_data[$type]->getTranslate('meta_title')){{ $categories_data[$type]->getTranslate('meta_title') }} @else Ломбарды @endif</title>
	<meta name="description" content="@if($categories_data[$type]->getTranslate('meta_description')){{ $categories_data[$type]->getTranslate('meta_description') }} @else Каталог ломбардов Украины  @endif">
	<meta name="keywords" content="@if($categories_data[$type]->getTranslate('meta_keywords')){{ $categories_data[$type]->getTranslate('meta_keywords') }} @else Ломбарды @endif">--}}

	{{-- CSS --}}
	<meta name="viewport" content="width=device-width, initial-scale=1.0">


	<link rel="shortcut icon" href="{{ asset('/img/favicon/favicon.ico') }}?ver={{ $version }}" type="image/x-icon">
	<link rel="shortcut icon" href="{{ asset('/img/favicon/favicon.png') }}?ver={{ $version }}" type="image/x-icon">
	<link rel="apple-touch-icon" href="{{ asset('/img/favicon/apple-touch-icon.png') }}?ver={{ $version }}">
	<link rel="apple-touch-icon" sizes="72x72" href="{{ asset('img/favicon/apple-touch-icon-72x72.png') }}?ver={{ $version }}">
	<link rel="apple-touch-icon" sizes="114x114" href="{{ asset('/img/favicon/apple-touch-icon-114x114.png') }}?ver={{ $version }}">

	<!-- Bootstrap core CSS -->
	<link href="{{ asset('/css/frontend/bootstrap.min.css') }}" rel="stylesheet" type="text/css" media="all" />

	<!-- Animation CSS -->
	<link href="{{ asset('/css/frontend/animate.min.css') }}" rel="stylesheet" type="text/css" media="all" />

	<link href="{{ asset('/css/frontend/font-awesome.min.css') }}" rel="stylesheet" type="text/css" media="all" />

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	<link rel="stylesheet" href="{{ asset('/css/plugins/sweetalert.css') }}">

	<!-- Custom styles for this template -->
	<link href="{{ asset('/css/frontend/style.css') }}" rel="stylesheet" type="text/css" media="all" />
	<link href="{{ asset('/css/frontend/flex-style.css') }}" rel="stylesheet" type="text/css" media="all" />
	{{--<link href="{{ asset('/libs/normalize.css/normalize.css') }}" rel="stylesheet" type="text/css" media="all">
	<link href="{{ asset('/libs/bootstrap-grid-only/css/grid12.css') }}" rel="stylesheet" type="text/css" media="all">
	<link href="{{ asset('/libs/owl-carousel/owl.carousel.css') }}" rel="stylesheet" type="text/css" media="all" />
	<link href="{{ asset('/libs/owl-carousel/owl.theme.css') }}" rel="stylesheet" type="text/css" media="all" />
	<link href="{{ asset('/css/frontend/fonts.css') }}" rel="stylesheet" type="text/css" media="all" />
	<link href="{{ asset('/css/frontend/font-awesome.min.css') }}" rel="stylesheet" type="text/css" media="all" />
	<link href="{{ asset('/css/frontend/main.css') }}?ver={{ $version }}" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="{{ asset('/css/plugins/sweetalert.css') }}">--}}
	{{-- /CSS --}}


	{{--<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>--}}

</head>

<body id="page-top">
<div class="navbar-wrapper">
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header page-scroll">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/{{ App::getLocale() }}">ЛОМБАРДИ.UA</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right navbar-brand langs">
					@foreach($langs as $lang)
						<li><a href="{{str_replace(url(App::getLocale()), url($lang->lang), Request::url())}}">{{$lang->lang}}</a></li>
					@endforeach
				</ul>
			</div>
		</div>
	</nav>
</div>

@yield('content')

<section id="contact" class="gray-section contact">
	<div class="container">
		<div class="row m-b-lg">
			<div class="col-lg-12 text-center">
				<div class="navy-line"></div>
				<h1>Contact Us</h1>
				<p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod.</p>
			</div>
		</div>
		<div class="row m-b-lg">
			<div class="col-lg-3 col-lg-offset-3">
				<address>
					<strong><span class="navy">Company name, Inc.</span></strong><br/>
					795 Folsom Ave, Suite 600<br/>
					San Francisco, CA 94107<br/>
					<abbr title="Phone">P:</abbr> (123) 456-7890
				</address>
			</div>
			<div class="col-lg-4">
				<p class="text-color">
					Consectetur adipisicing elit. Aut eaque, totam corporis laboriosam veritatis quis ad perspiciatis, totam corporis laboriosam veritatis, consectetur adipisicing elit quos non quis ad perspiciatis, totam corporis ea,
				</p>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12 text-center">
				<a href="mailto:test@email.com" class="btn btn-primary">Send us mail</a>
				<p class="m-t-sm">
					Or follow us on social platform
				</p>
				<ul class="list-inline social-icon">
					<li><a href="#"><i class="fa fa-twitter"></i></a>
					</li>
					<li><a href="#"><i class="fa fa-facebook"></i></a>
					</li>
					<li><a href="#"><i class="fa fa-linkedin"></i></a>
					</li>
				</ul>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 text-center m-t-lg m-b-lg">
				<p><strong>&copy; 2017 ЛОМБАРДИ.UA</strong><br/> </p>
			</div>
		</div>
	</div>
</section>
{{--Файл переводов--}}

<script>
	var trans = {
		'base.success': '{{ trans('base.success_send_contact') }}',
		'base.error': '{{ trans('base.error_send_contact') }}',
	};

</script>
{{--Файл переводов--}}
{{-- JS --}}

<script src="{{ asset('/js/frontend/jquery-2.1.1.js') }}"></script>
<script src="{{ asset('/js/frontend/pace.min.js') }}"></script>
<script src="{{ asset('/js/frontend/bootstrap.min.js') }}"></script>
<script src="{{ asset('/js/frontend/classie.js') }}"></script>
<script src="{{ asset('/js/frontend/cbpAnimatedHeader.js') }}"></script>
<script src="{{ asset('/js/frontend/wow.min.js') }}"></script>
<script src="{{ asset('/js/frontend/inspinia.js') }}"></script>
<script src="{{ asset('/js/plugins/sweetalert.min.js') }}"></script>
	{{--<script src="{{ asset('/libs/jquery/dist/jquery.min.js') }}"></script>

	<script src="{{ asset('/libs/owl-carousel/owl.carousel.min.js') }}"></script>
	<script src="{{ asset('/js/plugins/sweetalert.min.js') }}"></script>
	<script src="http://azmind.com/demo/andia-agency/v2-1/assets/js/wow.min.js" type="application/javascript"></script>
	<link href="http://azmind.com/demo/andia-agency/v2-1/assets/css/animate.css" rel="stylesheet">
<script src="{{ asset('/js/frontend/common.js') }}?ver={{ $version }}"></script>--}}

{{-- JS --}}
</body>
</html>