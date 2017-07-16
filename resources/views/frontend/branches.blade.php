@extends('ws-app')
@section('content')
    <div id="map"></div>
    <script type="text/javascript">


        var lombards = <?php echo $lombards;?>


        function initMap() {

            var map = new google.maps.Map(document.getElementById('map'), {
                center: {lat: 49.351966, lng: 31.568166},
                zoom: 6
            });
            var address = [];
            for (var key in lombards){
                address.push(lombards[key]);
            }
            console.log('ломбарди ====>',address );
            /*var address = [{
                lombard_address:'02121 КИЇВ, КИЇВ 121, ДЕКАБРИСТІВ, буд.12/37, оф.(кв.)СЕКЦІЯ 4',
                lombard_name:'EvRo'
            },
            {
                lombard_address:'43017 Луцьк, Луцьк, вул.Бенделіані, буд.3а',
                lombard_name:'Lombard'
            }];*/
            var lombardLogoImage = document.getElementById("lombard_logo_image").value;
            console.log(lombardLogoImage);

            var markerImage = new google.maps.MarkerImage(
                    '/' + lombardLogoImage
            );

            function prepareAddress(address) {
                var address_for_user = address.split(',');
                address_for_user.splice(1,1);
                var address_for_map = address_for_user.slice();
                address_for_user = address_for_user.join(',');
                var is_office =  address_for_map[address_for_map.length - 1].indexOf(" оф.");
                if(is_office == 0 || is_office == 1){
                    address_for_map.pop();
                }
                address_for_map = address_for_map.join(',');
                return {
                    for_user:address_for_user,
                    for_map:address_for_map
                }
            };

            geocoder = new google.maps.Geocoder();

            address.forEach( function(item){
                geocoder.geocode( { 'address': prepareAddress(item.lombard_address).for_map}, function(results, status) {
                    if (status == 'OK') {
                        var marker = new google.maps.Marker({
                            position: results[0].geometry.location,
                            map: map,
                            title: prepareAddress(item.lombard_address).for_user,
                            icon: markerImage,
                        });
                    } else {
                        alert('Geocode was not successful for the following reason: ' + status);
                    }
                });
            });

        }
    </script>
    <script async defer
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCXSIuFGADtHtXySwrTW1Ime_ISq33M3aY&callback=initMap">
    </script>

    <section class="features">
        <div class="container">
            <div class="row features-block">
                <div class="col-lg-6 features-text wow fadeInLeft">
                    <small>Код ЄДРПОУ: {{ $article->getAttributeTranslate('Код ЄДРПОУ') }}</small>
                    <h2>{{ $article->getTranslate('title') }}</h2>
                    <h5> {!! $article->getAttributeTranslate('Адреса') ? $article->getAttributeTranslate('Адреса') : " "  !!}</h5>
                    <p>{!! $article->getTranslate('short_description') !!}</p>
                </div>
                <div class="col-lg-6 text-center wow fadeInRight">
                    <div class="flex_img-item-wrap">
                        <img src="{{ asset( $article->getAttributeTranslate('Логотип') ? $article->getAttributeTranslate('Логотип') : "upload/articles/no-img.png") }}" alt="{{ $article->getTranslate('title') }}" class="img-responsive flex_img-responsive">
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="navy-line"></div>
                    <h1>{{ $categories_data['branches']->getTranslate('title') }} {{ $article->getTranslate('title') }}</h1>
                    <p>{{ $texts->get('short-description') }}</p>
                </div>
            </div>
            <div class="row">
                @foreach($article_children as $item)
                    <div class="col-sm-4">
                    <div class="team-member">
                        <h3>Відділення <span class="navy">№{{ $item->getAttributeTranslate('Відділення') }}</span> </h3>
                        <h2>{!! $item->getAttributeTranslate('Адреса') ? $item->getAttributeTranslate('Адреса') : " "  !!}</h2>
                        <small>Код ЄДРПОУ: {{ $item->getAttributeTranslate('Код ЄДРПОУ') }}</small>
                        <p>{{ $item->getTranslate('title') }}</p>
                        {{--<p> Пн. — Пт.: 9:00 — 20:00<br>
                            Сб.: 9:00 — 20:00<br>
                            Вс.: 9:00 — 19:00</p>--}}
                        <small>{{ $item->getAttributeTranslate('Міжміський телефонний код') ? '('. $item->getAttributeTranslate('Міжміський телефонний код') . ')' : " "   }} {{ $item->getAttributeTranslate('Телефон') }}</small>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
        <input type="hidden" id="lombard_logo_image" value="{{ $article->img ? $article->img : "img/frontend/no_img_map.png" }}">
    </section>

@endsection