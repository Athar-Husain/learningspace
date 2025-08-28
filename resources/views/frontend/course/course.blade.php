@extends('frontend.layouts.app')
@section('meta')
@php
$metaData = getMeta('courses');
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
<link rel="stylesheet" href="{{ asset('frontend/assets/css/coursespage.css') }}">
<link rel="stylesheet" href="{{ asset('frontend-theme-3/assets/css/swiper.min.css') }}">

<!-- page css -->
<link rel="stylesheet" href="{{ asset('frontend-theme-3/assets/css/style.css') }}">

<!-- landing_common page css -->
<link rel="stylesheet" href="{{ asset('frontend-theme-2/assets/css/common.css') }}">

<link rel="stylesheet" href="{{ asset('frontend/assets/css/home.css') }}">
@endpush

@section('content')

<main class="bg-white">

    <header class="course-page-banner-header image-bg position-relative"
        style="background: linear-gradient(to right, rgba(255, 255, 255, 0.7) 0%, rgba(255, 255, 255, 0) 50%), url('{{ getImageFile("frontend/assets/img/gallery/10.png") }}'); background-size: cover; background-position: center;background-size: cover; background-position: center; background-repeat: no-repeat;">
        <div class="section-overlay" style="background-color: rgba(0, 0, 0, 0.4);">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-sm-12 col-md-12">
                        <div class="page-banner-content text-center">
                            <!-- Breadcrumb Start-->
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb justify-content-center">
                                    <li class="breadcrumb-item font-14">
                                        <a href="{{ url('/') }}">{{ __('Home') }}</a>
                                    </li>
                                    <li class="breadcrumb-item font-14 active" aria-current="page">
                                        {{ __('Courses') }}
                                    </li>
                                </ol>
                            </nav>
                            <!-- Breadcrumb End-->
                            <!-- Title Start -->
                            <!-- <h3 class="page-banner-heading text-white pb-15">{{ __('Courses') }}</h3> -->
                            <!-- <h4 class="mt-0">{{ __('Start your Learning Journey') }}</h4> -->
                            <!-- Title End -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>



    <!-- Check if category_courses_area is enabled in Home settings -->
    @if($home && $home->category_courses_area == 1)
    <!-- Board Selection of Courses Area Start -->
    <section class="courses-area section-t-space section-b-85-space">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- Section Heading -->
                    <div class="section-left-title-with-btn d-flex justify-content-between align-items-end">
                        <div class="section-title section-title-left d-flex align-items-start">
                            <div class="section-heading-img">
                                <img src="{{ getImageFile($categoryLogo) }}" alt="Category Course">
                            </div>
                            <div>
                                <h3 class="section-heading">{{ __($categoryTitle) }}</h3>
                                <p class="section-sub-heading">{{ __($categorySubtitle) }}</p>
                            </div>
                        </div>
                    </div>

                    <!-- Category Tabs -->
                    <div class="course-tab-nav-wrap d-flex justify-content-between">
                        <ul class="nav nav-tabs tab-nav-list border-0" id="myTab" role="tablist">
                            @foreach($featureCategories as $key => $category)
                            <li class="nav-item" role="presentation">
                                <a class="nav-link {{ $key == 0 ? 'active' : '' }}" id="{{ $category->slug }}-tab"
                                    data-bs-toggle="tab" href="#{{ $category->slug }}" role="tab"
                                    aria-controls="{{ $category->slug }}"
                                    aria-selected="{{ $key == 0 ? 'true' : 'false' }}">{{ __($category->name) }}</a>
                            </li>
                            @endforeach
                        </ul>
                    </div>

                </div>
            </div>

            <!-- Tab Content -->
            <div class="tab-content" id="myTabContent">
                @foreach($featureCategories as $key => $category)
                <div class="tab-pane fade {{ $key == 0 ? 'show active' : '' }}" id="{{ $category->slug }}"
                    role="tabpanel" aria-labelledby="{{ $category->slug }}-tab">
                    <div class="course-slider-items owl-carousel owl-theme">
                        @foreach($category->courses as $course)
                        @php
                        $userRelation = getUserRoleRelation($course->user);
                        @endphp
                        <div class="col-12 col-sm-4 col-lg-3 w-100">
                            @include('frontend.partials.course', ['course' => $course])
                            <!-- Include course partial -->
                        </div>
                        @endforeach
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>
    <!-- Board Selection of Courses Area End -->
    @endif

    <!-- Top Courses Section Start -->
    @if($topCourse && count($topCourse) > 0)
    <section class="top-courses-area section-t-space section-b-85-space">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-left-title-with-btn d-flex justify-content-between align-items-end">
                        <div class="section-title section-title-left ">
                            <h3 class="section-heading">Top Courses</h3>
                            <p class="section-sub-heading">Explore the most popular courses this month</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                @foreach($topCourse as $courseId)
                @php
                $course = \App\Models\Course::find($courseId); // Fetch course by ID
                @endphp
                @if($course)
                <div class="col-12 col-sm-4 col-lg-3">
                    @include('frontend.partials.course', ['course' => $course])
                    <!-- Include course partial -->
                </div>
                @endif
                @endforeach
            </div>
        </div>
    </section>
    @endif
    <!-- Top Courses Section End -->

    <!-- Top Instructor Section End -->
    @if ($home->instructor_area == 1)
    <div class="training-section-area angel-elsie-bg overflow-hidden">

        <div>
            <div class="">
                <div class="">
                    <div class="c-ins-section-top">
                        <div class="c-ins-section-top1  d-flex">


                            <div class="section-heading-img flex-shrink-0">
                                <img src="{{ getImageFile(get_option('top_instructor_logo')) }}"
                                    alt="{{ __('Instructor') }}">
                            </div>
                            <div>
                                <h3 class="text-black  section-heading section-heading-light w-100">
                                    {{ __(get_option('top_instructor_title')) }}
                                </h3>
                            </div>
                        </div>
                        <a href="{{ route('instructor') }}"
                            class="theme-button2 sf-bg-transparent black-color">{{ __('View All Instructor') }}
                            <i class="fas fa-arrow-right mx-2"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xxl-7 col-lg-8 p-0">
            <div class="training-slider-all owl-carousel">
                @foreach ($instructors as $user)
                <div class="col-sm-6 col-md-6 col-lg-6 col-xl-3 mt-0 mb-25 w-100">
                    <div class="card instructor-item position-relative text-center border-0 p-30 px-3">
                        @php
                        $percent = $user->hourly_rate && $user->hourly_old_rate ?
                        (($user->hourly_old_rate - $user->hourly_rate) * 100) / $user->hourly_old_rate : 0;
                        @endphp
                        @if ($percent && $user->consultation_available == 1)
                        <span
                            class="instructor-price-cutoff badge radius-3 font-12 font-medium position-absolute bg-orange">
                            {{ round(@$percent) }}% {{ __('off') }}
                        </span>
                        @endif
                        <div class="search-instructor-img-wrap mb-15">
                            <a href="{{ route('userProfile', $user->id) }}">
                                <img src="{{ getImageFile(@$user->image_path) }}" alt="instructor"
                                    class="fit-image rounded-circle mx-auto">
                            </a>
                        </div>
                        <div class="card-body p-0">
                            <h6 class="card-title">
                                <a href="{{ route('userProfile', $user->id) }}">{{ $user->name }}</a>
                            </h6>
                            <p class="card-text instructor-designation font-medium mb-15">
                                {{ @$user->professional_title }}
                            </p>
                            <div
                                class="course-rating search-instructor-rating w-100 mb-15 d-inline-flex align-items-center justify-content-center">
                                <span class="font-medium font-14 me-2">
                                    {{ number_format(@$user->average_rating, 1) }}
                                </span>
                                <div class="star-ratings">
                                    <div class="fill-ratings" style="width: {{ @$user->average_rating * 20 }}%">
                                        <span>★★★★★</span>
                                    </div>
                                    <div class="empty-ratings">
                                        <span>★★★★★</span>
                                    </div>
                                </div>
                                <span class="rating-count font-14 ms-2">({{ count($user->courses) }})</span>
                            </div>
                            <div class="w-100">
                                <a href="{{ route('userProfile', $user->id) }}"
                                    class="green-theme-btn theme-button1 w-100">
                                    {{ __('View Profile') }}
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>

    </div>
    @endif

    <!-- ---Contact Section =------ -->
    <section class="py-5">
        <div class="container bg-white p-30">
            <div class="g-5">
                <!-- Contact Info -->
                <div class="col-md-6">
                    <div class="course-p-left">


                        <h2 class="display-6 fw-bold">
                            {{ __('We’d love to hear from you!') }}
                        </h2>
                        <h2 class="display-6 fw-bold">
                            {{ __(get_option('We’d love to hear from you!')) }}
                        </h2>
                        <p class="mt-4 text-muted">Our team is here to assist you. Choose your preferred way to connect.
                        </p>
                        <ul class="list-unstyled mt-4">
                            <li class="mb-4 d-flex">
                                <img src="{{ asset('frontend/assets/img/icons/mail.png') }}" class="me-3" height="24">
                                <div>
                                    <strong>Email</strong><br>
                                    customer.support@learningspace.com
                                </div>
                            </li>
                            <li class="mb-4 d-flex">
                                <img src="{{ asset('frontend/assets/img/icons/location.png') }}" class="me-3"
                                    height="28">
                                <div>
                                    <strong>Location</strong><br>
                                    Riyadh King Abdul Aziz Branch Rd, Alyasmin, Riyadh 13322, KSA.
                                </div>
                            </li>
                            <li class="d-flex">
                                <img src="{{ asset('frontend/assets/img/icons/phone.png') }}" class="me-3" height="20">
                                <div>
                                    <strong>Phone</strong><br>
                                    198421
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>

                <!-- Contact Form -->
                <div class="col-md-6 bg-blue ">
                    <!-- <div class="bg-white p-4 p-md-5 shadow-sm"> -->
                    @include('frontend.partials.contact-form')
                </div>
                <!-- </div> -->
            </div>
        </div>
    </section>

    <section class="py-5">
        <div class="container bg-white p-30">
            <div class="g-5">
                <!-- Course Info -->
                <div class="col-md-6">
                    <div class="course-p-left">

                        <!-- Heading -->
                        <h2 class="display-6 fw-bold">
                            {{ __($contactHeading ?? __('contact_heading')) }}
                        </h2>

                        <!-- Subheading -->
                        <h6 class="mt-2 text-muted">
                            {{ __(@$contactSubheading ?? __('contact_subheading')) }}
                        </h6>

                        <ul class="list-unstyled mt-4">
                            <li class="mb-4 d-flex">
                                <img src="{{ asset('frontend/assets/img/icons/mail.png') }}" class="me-3" height="24">
                                <div>
                                    <strong>Email</strong><br>
                                    {{ __($contactEmail ?? __('contact_email')) }}
                                </div>
                            </li>

                            <li class="mb-4 d-flex">
                                <img src="{{ asset('frontend/assets/img/icons/location.png') }}" class="me-3"
                                    height="28">
                                <div>
                                    <strong>Location</strong><br>
                                    {{ __(@$contactLocation ?? __('contact_location')) }}
                                </div>
                            </li>

                            <li class="d-flex">
                                <img src="{{ asset('frontend/assets/img/icons/phone.png') }}" class="me-3" height="20">
                                <div>
                                    <strong>Phone</strong><br>
                                    {{ __(@$contactPhone ?? __('contact_phone')) }}
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>



                <!-- Contact Form -->
                <div class="col-md-6 bg-blue">
                    @include('frontend.partials.contact-form')
                </div>
            </div>
        </div>
    </section>

</main>

@endsection

@push('script')
<script src="{{ asset('frontend/assets/js/course/addToCart.js') }}"></script>
<script src="{{ asset('frontend/assets/js/course/addToWishlist.js') }}"></script>
<script src="{{ asset('frontend-theme-3/assets/js/swiper.js') }}"></script>
<!--  -->
<script src="{{ asset('frontend-theme-3/assets/js/main.js') }}"></script>

<!-- frontend-theme-2 Custom scripts for this template -->
<script src="{{ asset('frontend-theme-2/assets/js/main.js') }}"></script>
@endpush