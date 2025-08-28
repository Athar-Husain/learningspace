@extends('frontend.layouts.app')
@section('meta')
@php
$metaData = getMeta('home');
@endphp

<meta name="description" content="{{ __($metaData['meta_description']) }}">
<meta name="keywords" content="{{ __($metaData['meta_keyword']) }}">

<!-- Open Graph meta tags for social sharing -->
<meta property="og:type" content="Learning">
<meta property="og:title" content="{{ __($metaData['meta_title']) }}">
<meta property="og:description" content="{{ __($metaData['meta_description']) }}">
<meta property="og:image" content="{{ __($metaData['og_image']) }}">
<meta property="og:url" content="{{ url()->current() }}">

<meta property="og:site_name" content="{{ __(get_option('app_name')) }}">

<!-- Twitter Card meta tags for Twitter sharing -->
<meta name="twitter:card" content="Learning">
<meta name="twitter:title" content="{{ __($metaData['meta_title']) }}">
<meta name="twitter:description" content="{{ __($metaData['meta_description']) }}">
<meta name="twitter:image" content="{{ __($metaData['og_image']) }}">

@endsection

@push('theme-style')
<!-- swiper slider page css -->
<link rel="stylesheet" href="{{ asset('frontend-theme-3/assets/css/swiper.min.css') }}">

<!-- page css -->
<link rel="stylesheet" href="{{ asset('frontend-theme-3/assets/css/style.css') }}">

<!-- landing_common page css -->
<link rel="stylesheet" href="{{ asset('frontend-theme-2/assets/css/common.css') }}">

<link rel="stylesheet" href="{{ asset('frontend/assets/css/home.css') }}">
@endpush

@section('content')
<!-- Main Content Start-->

<!-- <div class=" section-landing-hero  sf-section-landing-hero w-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    @php
                    $bannerImage = @$home->banner_image;
                    if (env('IS_LOCAL', 0)) {
                    $bannerImage = get_option('banner_image_' . get_option('theme', THEME_DEFAULT));
                    }
                    @endphp
                    <div class="landing-hero-area sf-landing-hero-area" data-background="{{ getImageFile($bannerImage) }}">
                        <div class="row">
                            <div class="col-lg-6 ">
                                <div class="landing-banner-text sf-landing-banner-text text-center pb-114">
                                    <h6 class="come-for-learn-text landing-come-area">
                                        @foreach (@$home->banner_mini_words_title ?? [] as $banner_mini_word)
                                        <span>{{ __($banner_mini_word) }}</span>
                                        @endforeach
                                    </h6>
                                    <h1 class=" landing-banner-title">
                                        {{ __(@$home->banner_first_line_title) }}
                                        <span>{{ __(@$home->banner_second_line_title) }}</span>
                                        {{ __(@$home->banner_third_line_title) }}
                                    </h1>
                                    <p class="section-sub-heading landing-sub-heading">{{ __(@$home->banner_subtitle) }}
                                    </p>
                                    <div class="d-flex justify-content-center align-items-center flex-wrap sf-g-10">
                                        <a href="{{ $home->banner_first_button_link }}"
                                            class="tour-btu theme-btn heading-2-bg white-color">
                                            {{ __($home->banner_first_button_name) }}
                                            <i class="fas fa-arrow-right mx-2"></i></a>
                                        <a href="{{ $home->banner_second_button_link }}"
                                            class="theme-btn theme-button1 mx-2">{{ __($home->banner_second_button_name) }}
                                            <i class="fas fa-arrow-right mx-2 "></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="landing-feature feature-1">
                            <div class="align-items-center d-flex flex-row sf-g-10 single-get-item">
                                <div class="flex-shrink-0 feature-img-wrap">
                                    <img src="{{ getImageFile(get_option('banner_left_card_icon')) }}" alt="feature">
                                </div>
                                <div class="feature-content flex-grow-1 text-center text-lg-start rtl-text">
                                    <h6>{{ __(get_option('banner_left_card_title')) }}</h6>
                                    <p>{{ __(get_option('banner_left_card_description')) }}</p>
                                </div>
                            </div>
                        </div>

                        <div class="landing-feature feature-2">
                            <div class="align-items-center d-flex flex-row sf-g-10 single-get-item">
                                <div class="flex-shrink-0 feature-img-wrap">
                                    <img src="{{ getImageFile(get_option('banner_right_card_icon')) }}" alt="feature">
                                </div>
                                <div class="feature-content flex-grow-1  text-center text-lg-start rtl-text">
                                    <h6>{{ __(get_option('banner_right_card_title')) }}</h6>
                                    <p>{{ __(get_option('banner_right_card_description')) }}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> -->

<div class="landing-hero-area sf-landing-hero-area"
    style="background: linear-gradient(to right, rgba(255, 255, 255, 0.7) 0%, rgba(255, 255, 255, 0) 50%), url('{{ getImageFile($bannerImage) }}'); background-size: cover; background-position: center;">
    <div class="row">
        <div class="col-lg-6 ">
            <div class="landing-banner-text sf-landing-banner-text pb-114">
                <h6 class="come-for-learn-text landing-come-area">
                    @foreach (@$home->banner_mini_words_title ?? [] as $banner_mini_word)
                    <span>{{ __($banner_mini_word) }}</span>
                    @endforeach
                </h6>
                <h1 class=" landing-banner-title">
                    {{ __(@$home->banner_first_line_title) }}
                    <br>
                    <!-- <span>{{ __(@$home->banner_second_line_title) }}</span> -->
                    {{ __(@$home->banner_third_line_title) }}
                </h1>
                <p class="section-sub-heading landing-sub-heading">{{ __(@$home->banner_subtitle) }}
                </p>
                <div class="d-flex justify-content-center align-items-center flex-wrap sf-g-10">
                    <a href="{{ $home->banner_first_button_link }}" class="tour-btu theme-btn heading-2-bg white-color">
                        {{ __($home->banner_first_button_name) }}
                        <i class="fas fa-arrow-right mx-2"></i></a>
                    <a href="{{ $home->banner_second_button_link }}"
                        class="theme-btn theme-button1 mx-2">{{ __($home->banner_second_button_name) }}
                        <i class="fas fa-arrow-right mx-2 "></i></a>
                </div>
            </div>
        </div>
    </div>
</div>





@php
$bridgeGap = $home ?? null; // or fetch Home::first() in controller and pass as $home
@endphp

@if($bridgeGap && $bridgeGap->bridge_gap_show)
<div class="container py-4">
    <div class="row align-items-center justify-content-between">
        <div class="col-md-6 d-none d-md-block">
            <!-- Bridge Gap Image -->
            <!-- <img src="{{ asset($bridgeGap->bridge_gap_image) }}" alt="Bridge the Gap"> -->
            <img src="{{ getImageFile($bridgeGap->bridge_gap_image) }}" alt="Bridge the Gap">
        </div>
        <div class="col-md-6 ps-md-5">
            <!-- Bridge Gap Title -->
            <h2 class="display-4 text-dark">
                {{ __(@$bridgeGap->bridge_gap_title) }}
            </h2>
            <!-- Bridge Gap Description -->
            <p class="mt-3 text-muted">
                {{ __(@$bridgeGap->bridge_gap_description) }}
            </p>
            <!-- Bridge Gap Button -->
            <a href="{{ $bridgeGap->bridge_gap_button_link }}" class="theme-btn theme-button1 my-4">
                {{ __(@$bridgeGap->bridge_gap_button_name) }}
                <!-- {{ __('Bridge Gap Section') }} -->
                <i class="fas fa-arrow-right mx-2"></i>
            </a>
        </div>
    </div>
</div>
@endif



<!-- adding here  -->




<div class="py-1 pb-28 mt-5 bg-white py-4">
    <!-- Trusted By Section -->
    <div class="text-center mb-40">
        <h6 class="font-weight-semibold text-dark d-flex gap-3 justify-content-center">
            <img src="{{ asset('frontend/assets/img/icons/left-icon.png') }}" />TRUSTED BY
            <img src="{{ asset('frontend/assets/img/icons/right-icon.png') }}" />
        </h6>
        <h3 class="display-4 font-weight-bold text-dark my-10">Top-Tier Entities</h3>
        <div class="">
            <div class="row row-cols-5 row-cols-md-7 row-cols-lg-7 g-3 bg-white">
                @foreach ([
                'trusted1',
                'trusted2',
                'trusted3',
                'trusted4',
                'trusted5',
                'trusted6',
                'trusted7',
                'trusted8',
                'trusted9',
                'trusted10',
                'trusted11',
                'trusted12',
                'trusted13',
                'trusted14',
                ] as $trusted)
                <div class="col px-2 py-1 d-flex justify-content-center align-items-center shadow-sm"
                    style="box-shadow: 1px 1px 5px rgba(0, 0, 0, 0.1); max-width: 200px;">
                    <div class="d-flex justify-content-center align-items-center">
                        <img src="{{ asset('frontend/assets/img/trusted/' . $trusted . '.png') }}" alt="Logo"
                            class="img-fluid my-3" style="max-width: 100%; height: auto;">
                    </div>
                </div>
                @endforeach
            </div>
        </div>



        <div class="d-flex justify-content-center mt-10">
            <a href="/about-us" class="theme-btn theme-button1 my-4">
                View Success Stories
                <i class="fas fa-arrow-right mx-2"></i>
            </a>
        </div>
    </div>
    <!-- Why Our Space? Section -->
    <div class="container mt-5">
        <h3 class="text-3xl font-bold text-gray-900">Why Our Space?</h3>
        <div class="row row-cols-1 row-cols-md-3 g-4 mt-6">
            <!-- Feature Card 1 -->
            <div class="col">
                <div class="d-flex border-top  border-black pt-3">
                    <div>
                        <h4 class="d-flex font-semibold text-xl align-items-center gap-3 my-4">
                            <img src="{{ asset('frontend/assets/img/icons/space/1.png') }}" alt="" class="img-fluid"
                                style="max-height: 15px;">
                            Market-Aligned Courses
                        </h4>
                        <p class="text-gray-600">Learning Space helps in ramping your company’s performance and
                            maximizing your productivity and profits.</p>
                    </div>
                </div>
            </div>

            <!-- Feature Card 2 -->
            <div class="col">
                <div class="d-flex border-top border-black pt-3">
                    <div>
                        <h4 class="d-flex font-semibold text-xl align-items-center gap-3 my-4">
                            <img src="{{ asset('frontend/assets/img/icons/space/2.png') }}" alt="" class="img-fluid"
                                style="max-height: 20px;">
                            Expert Instructors
                        </h4>
                        <p class="text-gray-600">Learning Space helps in ramping your company’s performance and
                            maximizing your productivity and profits.</p>
                    </div>
                </div>
            </div>

            <!-- Feature Card 3 -->
            <div class="col">
                <div class="d-flex border-top border-black pt-3">
                    <div>
                        <h4 class="d-flex font-semibold text-xl align-items-center gap-3 my-4">
                            <img src="{{ asset('frontend/assets/img/icons/space/3.png') }}" alt="learning space"
                                class="img-fluid" style="max-height: 20px;"> Flexible Materials
                        </h4>
                        <p class="text-gray-600">Learning Space helps in ramping your company’s performance and
                            maximizing your productivity and profits.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>




<div class="h-skill h-skill-bg h-skill-padding">
    <div class="h-skill-container">
        <div class="h-skill-header">
            <!-- Header Section -->
            <div class="h-skill-text-left">
                <h2 class="h-skill-title text-white font-weight-bold">
                    Elevate Your Skills.<br />Pick Your Subject
                </h2>
                <p class="h-skill-description">
                    We prepare individuals and organizations to excel in the <br />
                    tech-driven world, shaping the workforce of tomorrow.
                </p>
            </div>
            <div class="h-skill-image-hidden">
                <img src="{{ asset('frontend/assets/img/statisticscontainer.png') }}" alt="" class="img-fluid"
                    style="max-width: 80%; height: auto;" />
            </div>
        </div>
        <!-- Course Categories -->
        <div class="h-skill-courses">
            <!-- Static Course Cards -->
            <div class="h-skill-card">
                <div class="h-skill-card-icon">
                    <img src=" {{ asset('frontend/assets/img/icons/subject/software.png') }}" alt="software Development"
                        class="h-skill-card-icon-img" />
                </div>
                <h3 class="h-skill-card-title">Software Development</h3>
                <p class="h-skill-card-description">
                    Embedded System<br />
                    UI Design<br />
                    Software Engineering
                </p>
                <a href="#" class="h-skill-card-link">
                    LEARN MORE
                    <i class="fas fa-arrow-right mx-2"></i>
                </a>
            </div>
            <div class="h-skill-card">
                <div class="h-skill-card-icon">
                    <img src="{{ asset('frontend/assets/img/icons/subject/bigdata.png') }}" alt="Big Data & Ai"
                        class="h-skill-card-icon-img" />
                </div>
                <h3 class="h-skill-card-title">Big Data & AI</h3>
                <p class="h-skill-card-description">
                    AI<br />
                    Business Intelligence<br />
                    Software Engineering
                </p>
                <a href="#" class="h-skill-card-link">
                    LEARN MORE
                    <i class="fas fa-arrow-right mx-2"></i>
                </a>
            </div>
            <div class="h-skill-card">
                <div class="h-skill-card-icon">
                    <img src="{{ asset('frontend/assets/img/icons/subject/cybersecurity.png') }}" alt="cyber security"
                        class="h-skill-card-icon-img" />
                </div>
                <h3 class="h-skill-card-title">Cyber Security</h3>
                <p class="h-skill-card-description">
                    Information Security Engineering<br />
                    Incident Response<br />
                    Risk Analysis
                </p>
                <a href="#" class="h-skill-card-link">
                    LEARN MORE
                    <i class="fas fa-arrow-right mx-2"></i>
                </a>
            </div>
            <div class="h-skill-card">
                <div class="h-skill-card-icon">
                    <img src="{{ asset('frontend/assets/img/icons/subject/infrastructure.png') }}" alt="Infrastructure"
                        class="h-skill-card-icon-img" />
                </div>
                <h3 class="h-skill-card-title">Infrastructure</h3>
                <p class="h-skill-card-description">
                    Network Engineering<br />
                    Cloud Computing
                </p>
                <a href="#" class="h-skill-card-link">
                    LEARN MORE
                    <i class="fas fa-arrow-right mx-2"></i>
                </a>
            </div>
            <div class="h-skill-card">
                <div class="h-skill-card-icon">
                    <img src="{{ asset('frontend/assets/img/icons/subject/digitalmarketing.png') }}"
                        alt="Digital Marketing" class="h-skill-card-icon-img" />
                </div>
                <h3 class="h-skill-card-title">E-commerce & Digital Marketing</h3>
                <p class="h-skill-card-description">
                    Digital Marketing<br />
                    Ecommerce
                </p>
                <a href="#" class="h-skill-card-link">
                    LEARN MORE
                    <i class="fas fa-arrow-right mx-2"></i>
                </a>
            </div>
            <div class="h-skill-card">
                <div class="h-skill-card-icon">
                    <img src="{{ asset('frontend/assets/img/icons/subject/technical.png') }}" alt="Technical Operations"
                        class="h-skill-card-icon-img" />
                </div>
                <h3 class="h-skill-card-title">Technical Support & Operations</h3>
                <p class="h-skill-card-description">
                    System Administration<br />
                    Infrastructure Support
                </p>
                <a href="#" class="h-skill-card-link">
                    LEARN MORE
                    <i class="fas fa-arrow-right mx-2"></i>
                </a>
            </div>
        </div>

        <!-- View More Button -->
        <div class="d-flex justify-content-center mt-10">
            <a href="/about-us" class="theme-btn theme-button1 my-4">
                View More
                <i class="fas fa-arrow-right mx-2"></i>
            </a>
        </div>
    </div>
</div>









<div class="home__section home__section--main py-16 px-6">
    <div class="container mx-auto">
        <!-- Main Section -->
        <div class="home__grid grid grid-cols-1 md:grid-cols-2 gap-8 items-center bg-gray-100">
            <!-- Image -->
            <div class="home__image">
                <img src="{{ asset('frontend/assets/img/maximize.png') }}" alt="Corporate Training"
                    class="home__image--img w-full" />
            </div>
            <!-- Content -->
            <div class="home__content">
                <h2 class="home__title text-3xl md:text-4xl font-bold text-gray-900">
                    Maximize Company’s Performance
                </h2>
                <p class="home__description mt-4 text-gray-600">
                    Unlock the full potential of your workforce with our carefully
                    designed learning solutions. From leadership development to
                    specialized technical skills, our programs are crafted to
                    address your company's unique challenges.
                </p>
                <a href="/about-us" class="theme-btn theme-button1 my-4">
                    View More
                    <i class="fas fa-arrow-right mx-2"></i>
                </a>
            </div>


        </div>

        <!-- Partners Section -->
        <div class="home__partners text-center mt-16">
            <h3 class="home__partners-title text-xl font-semibold text-gray-900 flex gap-x-3 justify-center">
                <img src="{{ asset('frontend/assets/img/icons/left-icon.png') }}" class="home__partners-icon" />OUR
                PARTNERS
                <img src="{{ asset('frontend/assets/img/icons/right-icon.png') }}" class="home__partners-icon" />
            </h3>
            <div class="home__partners-logos mt-4 flex justify-center gap-16 flex-wrap items-center">
                <img src="{{ asset('frontend/assets/img/partners/partner1.png') }}" alt="Partner 1"
                    class="home__partner-logo h-14" />
                <img src="{{ asset('frontend/assets/img/partners/partner2.png') }}" alt="Partner 2"
                    class="home__partner-logo h-16" />
                <img src="{{ asset('frontend/assets/img/partners/partner3.png') }}" alt="Partner 3"
                    class="home__partner-logo h-24" />
                <img src="{{ asset('frontend/assets/img/partners/partner4.png') }}" alt="Partner 4"
                    class="home__partner-logo h-16" />
                <img src="{{ asset('frontend/assets/img/partners/partner5.png') }}" alt="Partner 5"
                    class="home__partner-logo h-16" />
            </div>
        </div>


    </div>
</div>
<!-- Call to Action Section -->
<div class="home__cta-section mt-16 py-16 text-center rounded-md bg-cover"
    style="background-image: url('{{ asset('frontend/assets/img/footer-bg.png') }}')">
    <h2 class="home__cta-title text-3xl md:text-4xl font-bold text-gray-900">
        Don’t leave your <br />
        progress to chance
    </h2>
    <p class="home__cta-description mt-4 text-gray-600">
        Talk to one of our experts to show you how you can benefit from <br />
        Learning Space.
    </p>
    <div class="d-flex justify-content-center mt-10">
        <a href="/about-us" class="theme-btn theme-button1 my-4">
            View More
            <i class="fas fa-arrow-right mx-2"></i>
        </a>
    </div>
</div>




<!-- New Video Player Modal End-->

@endsection

@push('style')
<!-- Video Player css -->
<link rel="stylesheet" href="{{ asset('frontend/assets/vendor/video-player/plyr.css') }}">
@endpush

@push('script')
<!--Hero text effect-->
<script src="{{ asset('frontend/assets/js/course/addToCart.js') }}"></script>
<script src="{{ asset('frontend/assets/js/course/addToWishlist.js') }}"></script>
<script src="{{ asset('frontend/assets/js/custom/booking.js') }}"></script>

<!-- Video Player js -->
<script src="{{ asset('frontend/assets/vendor/video-player/plyr.js') }}"></script>

<!-- frontend-theme-2 Custom scripts for this template -->
<script src="{{ asset('frontend-theme-3/assets/js/swiper.js') }}"></script>
<!--  -->
<script src="{{ asset('frontend-theme-3/assets/js/main.js') }}"></script>

<!-- frontend-theme-2 Custom scripts for this template -->
<script src="{{ asset('frontend-theme-2/assets/js/main.js') }}"></script>

<script>
const zai_player = new Plyr('#player');
</script>
<!-- Video Player js -->
@endpush