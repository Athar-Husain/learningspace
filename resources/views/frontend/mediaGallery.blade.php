@extends('frontend.layouts.app')

@section('meta')
    @php
        $metaData = getMeta('media-gallery');
    @endphp

    <meta name="description" content="{{ __($metaData['meta_description']) }}">
    <meta name="keywords" content="{{ __($metaData['meta_keyword']) }}">

    <meta property="og:type" content="Learning">
    <meta property="og:title" content="{{ __($metaData['meta_title']) }}">
    <meta property="og:description" content="{{ __($metaData['meta_description']) }}">
    <meta property="og:image" content="{{ __($metaData['og_image']) }}">
    <meta property="og:url" content="{{ url()->current() }}">

    <meta property="og:site_name" content="{{ __(get_option('app_name')) }}">

    <meta name="twitter:card" content="Learning">
    <meta name="twitter:title" content="{{ __($metaData['meta_title']) }}">
    <meta name="twitter:description" content="{{ __($metaData['meta_description']) }}">
    <meta name="twitter:image" content="{{ __($metaData['og_image']) }}">
@endsection

@push('theme-style')
    <link rel=" stylesheet" href="{{ asset('frontend-theme-3/assets/css/swiper.min.css') }}">

    <link rel=" stylesheet" href="{{ asset('frontend-theme-3/assets/css/style.css') }}">

    <link rel=" stylesheet" href="{{ asset('frontend-theme-2/assets/css/common.css') }}">

    <link rel=" stylesheet" href="{{ asset('frontend/assets/css/mediagallery.css') }}">
@endpush


@section('content')
   
    <section >
        

       <div class="gallery">

      
        <div class="gallery__header ">
            <div class="col-md-6 gallery__header-text">
                <p class="gallery__header-subtitle">MEDIA GALLERY</p>
                <h1 class="gallery__header-title">Inspiring Moments in Action</h1>
                <p class="gallery__header-description">
                    Step into the world of Learning Space—where innovation, collaboration, and growth come to life. Explore our gallery and experience the moments that shape the future of learning.
                </p>
            </div>
            <div class="col-md-6 gallery__header-image">
                <img src="{{ asset('frontend/assets/img/gallery/1.png') }}" alt="Inspiring moment" class="gallery__header-img" />
            </div>
        </div>


        <div class="gallery__images ">
            <div class=" gallery__image">
                <img src="{{ asset('frontend/assets/img/gallery/2.png') }}" alt="Gallery image" class="gallery__image-img" />
            </div>
            <div class=" gallery__image">
                <img src="{{ asset('frontend/assets/img/gallery/3.png') }}" alt="Gallery image" class="gallery__image-img" />
            </div>
            <div class=" gallery__image">
                <img src="{{ asset('frontend/assets/img/gallery/4.png') }}" alt="Gallery image" class="gallery__image-img" />
            </div>
        </div>

        <div class="gallery__image-large">
            <img src="{{ asset('frontend/assets/img/gallery/5.png') }}" alt="Large Gallery Image" class="gallery__image-large-img" />
        </div>

       


        <div class="gallery__grid">
            <div class="gallery__grid__left">
                <div class="ggl-col1">
                    <div class="ggl-col1-img1">
                        <img src="{{ asset('frontend/assets/img/gallery/6.png') }}" alt="Tall image left" class="gallery__grid-img" />
                    </div>
                    <div class="ggl-col1-img2">
<img src="{{ asset('frontend/assets/img/gallery/7.png') }}" alt="Short image left" class="gallery__grid-img" />
                    </div>
                    
                </div>
                <div class="ggl-col2">
                    <div class="ggl-col1-img1">
                        <img src="{{ asset('frontend/assets/img/gallery/8.png') }}" alt="Short image right" class="gallery__grid-img" />
                    </div>
                    <div class="ggl-col1-img2">
<img src="{{ asset('frontend/assets/img/gallery/9.png') }}" alt="Tall image right" class="gallery__grid-img" />
                    </div>
                </div>
            </div>
            <div class="gallery__grid__right">
                <div class="ggr-row1">
                    <img src="{{ asset('frontend/assets/img/gallery/10.png') }}" alt="Large image right section" class="gallery__grid-img" />
                </div>
                <div class="ggr-row2">
                    <div class="ggr-row2-col1">
<img src="{{ asset('frontend/assets/img/gallery/11.png') }}" alt="Bottom left" class="gallery__grid-img" />
                    </div>
                    <div class="ggr-row2-col2">
 <img src="{{ asset('frontend/assets/img/gallery/12.png') }}" alt="Bottom right" class="gallery__grid-img" />
                    </div>

                </div>
            </div>
        </div>

         </div>
      
    </section>

    {{-- Removed 'hidden' class from initial modal HTML as it's now controlled by JS and CSS 'opacity' and 'visibility' --}}
    <div id="modal" class="modal">
        <button id="closeModal" class="modal__close" aria-label="Close modal">&times;</button>
        <button id="prevBtn" class="modal__nav modal__nav--prev" aria-label="Previous image">&#10094;</button>
        <img id="modalImg" class="modal__image" alt="Modal Image" />
        <button id="nextBtn" class="modal__nav modal__nav--next" aria-label="Next image">&#10095;</button>
    </div>
@endsection

@push('script')
    <script src="{{ asset('frontend/assets/js/custom/gallery.js') }}"></script>
    <script src="{{ asset('frontend-theme-3/assets/js/swiper.js') }}"></script>
    <script src="{{ asset('frontend-theme-3/assets/js/main.js') }}"></script>
@endpush