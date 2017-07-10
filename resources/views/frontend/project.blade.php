@extends('ws-app')

@section('content')
    @if( count($project) !== 0 AND $categories_data['project']->active == 1)
        <h2 class="mob-block_header mob-project-header">{{ $categories_data['project']->getTranslate('title') }}</h2>
        @foreach($project as $project_item)
            <div class="mob-project-item" data-id="p{{ $project_item->id }}" style="background-image: url('{{ asset( $project_item->getAttributeTranslate('Картинка проекта')) }}');">
                <div class="mob-project-item_name">
                    <span class="mob-project-item_name-text">{{ $project_item->getTranslate('title') }}</span>
                </div>
            </div>
        @endforeach
        @foreach($project as $project_item)
            <div id="mob-project-carousel-p{{ $project_item->id }}" class="mob-carousel-wrap">
                <div class="mob-close-gallery"><i class="fa fa-times fa-2x" aria-hidden="true"></i></div>
                <div class="owl-carousel owl-theme">
                    @foreach($project_item->getImages() as $imgSrc)
                        <div class="mob-gallery-item">
                            <img src="/{{ $imgSrc['full'] }}" alt="">
                        </div>
                    @endforeach
                </div>
            </div>
        @endforeach
    @endif
@endsection