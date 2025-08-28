{{-- Hero Section --}}
@extends('frontend.layouts.app')
@section('meta')
@php
$metaData = getMeta('who_we_are');
@endphp

<meta name="description" content="{{ $metaData['meta_description'] }}">
<meta name=" keywords" content="{{ __($metaData['meta_keyword']) }}">

<!-- Open Graph meta tags for social sharing -->
<meta property=" og:type" content="Learning">
<meta property="og:title" content="{{ $metaData['meta_title']}}">
<meta property=" og:description" content="{{ __($metaData['meta_description']) }}">
<meta property=" og:image" content="{{ __($metaData['og_image']) }}">
<meta property=" og:url" content="{{ url()->current() }}">

<meta property=" og:site_name" content="{{ __(get_option('app_name')) }}">

<!-- Twitter Card meta tags for Twitter sharing -->
<meta name=" twitter:card" content="Learning">
<meta name="twitter:title" content="{{ __($metaData['meta_title']) }}">
<meta name=" twitter:description" content="{{ __($metaData['meta_description']) }}">
<meta name=" twitter:image" content="{{ __($metaData['og_image']) }}">
@endsection


@push('theme-style')
<!-- swiper slider page css -->
<link rel=" stylesheet" href="{{ asset('frontend-theme-3/assets/css/swiper.min.css') }}">

<!-- page css -->
<link rel=" stylesheet" href="{{ asset('frontend-theme-3/assets/css/style.css') }}">

<!-- landing_common page css -->
<link rel=" stylesheet" href="{{ asset('frontend-theme-2/assets/css/common.css') }}">

<link rel=" stylesheet" href="{{ asset('frontend/assets/css/whoweare.css') }}">
@endpush


@section('content')

<!-- Hero Section -->
<section class=" hero-section position-relative">
    <img src="{{ get_option('hero_image_url', 'frontend/assets/img/whoweare/bgwwr.png') }}"
        loading="eager" alt="Futuristic golden building in cityscape" class="hero-image">
    <div class="overlay"></div>
    <div class="hero-content d-flex flex-column align-items-center justify-content-center text-center">
        <p class="hero-subtitle text-white mb-2">{{ __('WHO WE ARE') }}</p>
        <h1 class="wwr-hero-title text-white">{{ __('Your Space to Learn') }}<br>{{ __('the Future Skills') }}</h1>
    </div>
</section>

<!-- Learn Today, Lead Tomorrow Section -->
<section class="info-section py-16 px-6">
    <div class="container">
        <div class="row info-section-content">
            <div class="col-md-6 info-section-left ">
                <h2 class="wwr-section-title">{{ __('Learn Today, Lead Tomorrow.') }}</h2>
                <p class="section-description">
                    {{ __('Learning Space bridges Saudi Arabia\'s digital skills gap through innovation, expert training, and industry partnerships. Committed to Vision 2030, we empower individuals and businesses with future-ready skills.') }}
                </p>
                <!-- <a href="/about-us" class="theme-btn theme-button1 my-4">
                                        View More
                                        <i class="fas fa-arrow-right mx-2"></i>
                                    </a> -->
                <a href="{{ get_option('learn_more_url', '#') }}"
                    class="theme-btn theme-button1 my-4">{{ __('LEARN MORE') }}
                    <i class="fas fa-arrow-right mx-2"></i>
                </a>
            </div>
            <div class="col-md-6">
                <div class="image-container">
                    <img src="{{ get_option('learn_today_image_url', 'frontend/assets/img/whoweare/wwr2.png') }}"
                        alt="{{ __('Educational setting with students') }}" class="img-fluid rounded-lg shadow-lg">
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Vision and Mission Section -->
<section class="vision-mission-section py-16 px-6 bg-light">
    <div class="container vision-content">
        <div class="row">
            <!-- Vision Column -->
            <div class="col-md-6">
                <h2 class="v-section-title">{{ __('OUR VISION') }}</h2>
                <h3 class="subsection-title">{{ __('Shape the Future of Learning') }}</h3>
                <p class="section-description">
                    {{ __('To become the leading technical and digital skills development hub in Saudi Arabia, driving workforce transformation in alignment with Vision 2030.') }}
                </p>
            </div>

            <!-- Mission Column -->
            <div class="col-md-6">
                <h2 class="v-section-title">{{ __('OUR MISSION') }}</h2>
                <h3 class="subsection-title">{{ __('Learn. Grow. Succeed') }}</h3>
                <p class="section-description">
                    {{ __('To equip individuals and businesses with essential skills, fostering innovation, career growth, and a knowledge-driven economy.') }}
                </p>
            </div>
        </div>
    </div>
</section>

<!-- The Difference We Make Section -->
<section class="difference-section py-16 px-6">
    <div class="container">
        <div class="row diff-section-content">
            <!-- Left Column -->
            <div class="col-md-6 col-lg-7">
                <h2 class="section-title">{{ __('The Difference') }}<br>{{ __('We Make') }}</h2>


                <a href="{{ get_option('learn_more_url', '#') }}"
                    class=" theme-btn theme-button1 my-4">{{ __('View Our Courses') }}
                    <i class="fas fa-arrow-right mx-2"></i>
                </a>
            </div>

            <!-- Middle Column -->
            <div class="col-md-6 col-lg-3 difference-card bg-warning text-white p-4">
                <h3 class="card-title">{{ __('Future-Ready Skills') }}</h3>
                <p class="card-description">
                    {{ __('We train learners in AI, cybersecurity, fintech, and other leading fields to keep them ahead of market trends.') }}
                </p>
            </div>

            <!-- Right Column -->
            <div class="col-md-4 col-lg-2">
                <div class="image-container">
                    <img src="{{ get_option('difference_we_make_image_url', 'frontend/assets/img/whoweare/wwr3.png') }}"
                       loading="lazy" alt="{{ __('Student with learning materials') }}" class="img-fluid">
                </div>
            </div>
        </div>

        <!-- Second Row -->
        <div class="row mt-8">
            <!-- Left Column -->
            <div class="col-md-6 col-lg-3">
                <div class="image-container">
                    <img src="{{ get_option('industry_certifications_image_url', 'frontend/assets/img/whoweare/wwr4.png') }}"
                          loading="lazy"  alt=" {{ __('Industry Certifications') }}" class="img-fluid">
                </div>
            </div>

            <!-- Middle Column -->
            <div class="col-md-6 col-lg-3 bg-danger text-white p-4">
                <h3 class="card-title">{{ __('Industry-Recognized Certifications') }}</h3>
                <p class="card-description">
                    {{ __('We partner with global leaders like AWS, CompTIA, and EC-Council to provide top-tier certifications.') }}
                </p>
            </div>

            <!-- Right Column -->
            <div class="col-md-12 col-lg-3">
                <div class="image-container">
                    <img src="{{ get_option('connecting_talent_image_url', 'frontend/assets/img/whoweare/wwr5.png') }}"
                        alt="{{ __('Connecting talent') }}" class="img-fluid">
                </div>
            </div>

            <!-- Connecting Talent Column -->
            <div class="col-md-6 col-lg-3 bg-pink text-dark p-4">
                <h3 class="card-title">{{ __('Connecting Talent with Employers') }}</h3>
                <p class="card-description">
                    {{ __('Our strong employer network helps match students with the right opportunities, bridging the skills gap.') }}
                </p>
            </div>
        </div>
    </div>
</section>

<!-- Recruiting Talents Section -->
<section class="recruiting-section py-16 px-6 text-center bg-light">
    <div class="container">
        <h2 class="re-csection-title">{{ __('Recruiting Talents') }}<br>{{ __('Has Never Been Easier') }}</h2>
        <p class="section-description">{{ __('Three Steps to Recruit Talents') }}</p>
    </div>
</section>

<!-- impact section --  -->
<section class="impact-section py-16 px-6 bg-dark text-white">
    <div class="container">
        <h2 class="impact-s-title">{{ __('Our Impact') }}</h2> 
        <h2 class="impact-s-para">
            {{ __('At Learning Space, we help businesses hire job-ready talent. With screening, soft skills training, and tailored programs, our partners get skilled professionals ready to contribute from day one.') }}
        </h2> 
        <div class="impact-s-cards">
            <!-- Card 1: Graduated Trainees -->
            <div class="imp-s-card">
                <i class="fas fa-users"></i>
                <p class="imp-s-card-card-counts">
                    {{ get_option('graduated_trainees', '1500') }}+
                </p>
                <h4 class="imp-s-card-card-title">
                    {{ __('Graduated Trainees') }}
                </h4>
            </div>
            
            <!-- Card 2: Trained Candidates -->
            <div class="imp-s-card">
                <i class="fas fa-chalkboard-teacher"></i>
                <p class="imp-s-card-card-counts">
                    {{ get_option('trained_candidates', '2000') }}+
                </p>
                <h4 class="imp-s-card-card-title">
                    {{ __('Trained Candidates') }}
                </h4>
            </div>
            
            <!-- Card 3: Job Placements -->
            <div class="imp-s-card">
                <i class="fas fa-briefcase"></i>
                <p class="imp-s-card-card-counts">
                    {{ get_option('job_placements', '1200') }}+
                </p>
                <h4 class="imp-s-card-card-title">
                    {{ __('Job Placements') }}
                </h4>
            </div>
            
            <!-- Card 4: Industry Certifications -->
            <!-- <div class="imp-s-card">
                <i class="fas fa-certificate"></i>
                <p class="imp-s-card-card-counts">
                    {{ get_option('industry_certifications', '50') }}+
                </p>
                <h4 class="imp-s-card-card-title">
                    {{ __('Industry Certifications') }}
                </h4>
            </div> -->
        </div>
        <a href="{{ get_option('learn_more_url', '/courses') }}"
                    class=" theme-btn theme-button1 my-4">{{ __('View Our Courses') }}
                    <i class="fas fa-arrow-right mx-2"></i>
        </a>
    </div>
</section>





<section class="partnering-talents-section py-16 px-6 md:px-12 lg:px-20 bg-white">
    <div class="pt-section-left">
        <div class="lg:pr-12 flex flex-col">
            <h2 class="pts-title">
                {{ __('Partnering to Empower Talents') }}
            </h2>
            <p class="text-gray-700 max-w-xl">
                {{ __('We team up with top partners to create learning spaces that help talents reach their goals.') }}
            </p>
        </div>
    </div>
    
    <div class="pt-section-right">
        <div class="custom-grid">
            <!-- Top Left Image -->
            <div class="custom-grid-item custom-grid-item-top-left">
                <img 
                    src="{{ get_option('partnering_image_1', 'frontend/assets/img/whoweare/partner3.png') }}" 
                    alt="{{ __('Partnership signing ceremony') }}" 
                    class="custom-image"
                >
            </div>
            
            <!-- Top Right Image -->
            <div class="custom-grid-item custom-grid-item-top-right">
                <img 
                    src="{{ get_option('partnering_image_2', 'frontend/assets/img/whoweare/partner4.png') }}" 
                    alt="{{ __('Partners exchanging documents') }}" 
                    class="custom-image"
                >
            </div>
        </div>

        <!-- Bottom Row -->
        <div class="custom-grid">
            <!-- Bottom Left Image -->
            <div class="custom-grid-item custom-grid-item-bottom-left">
                <img 
                    src="{{ get_option('partnering_image_3', 'frontend/assets/img/whoweare/partner2.png') }}" 
                    alt="{{ __('Partners at conference') }}" 
                    class="custom-image"
                >
            </div>

            <!-- Bottom Right Image -->
            <div class="custom-grid-item custom-grid-item-bottom-right">
                <img 
                    src="{{ get_option('partnering_image_4', 'frontend/assets/img/whoweare/partner1.png') }}" 
                    alt="{{ __('Group of partners at event') }}" 
                    class="custom-image"
                >
            </div>
        </div>
    </div>
    
</section>


<!-- Our Team Section -->



<section class="our-team-section py-16 px-6 md:px-12 lg:px-20 bg-white">
    <div class="max-w-7xl mx-auto">
        <div class="mb-12">
            <h2 class="text-3xl md:text-4xl font-bold text-gray-900 inline-block relative">
                {{ __('Our Team') }}
                <span class="absolute bottom-0 left-0 w-16 h-1 bg-red-500 -mb-2"></span>
            </h2>
        </div>
        
        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
            <!-- Team Member 1 -->
            <div class="bg-white">
                <div class="mb-4">
                    <img 
                        src="{{ get_option('team_member_1_image', 'frontend/assets/img/whoweare/team1.jpg') }}" 
                        alt="Fahad Al-Mutairi" 
                        class="w-full h-auto"
                    >
                </div>
                <div class="flex items-center justify-between mb-4">    
                    <div>
                        <h3 class="text-lg font-bold mb-1">Fahad Al-Mutairi</h3>
                        <p class="text-gray-600 text-sm mb-2">{{ __('Chief Executive Officer') }}</p>
                    </div>
                </div>
            </div>

            <!-- Team Member 2 -->
            <div class="bg-white">
                <div class="mb-4">
                    <img 
                        src="{{ get_option('team_member_2_image', 'frontend/assets/img/whoweare/team2.jpg') }}" 
                        alt="Anas Diab" 
                        class="w-full h-auto"
                    >
                </div>
                <div class="flex items-center justify-between mb-4">    
                    <div>
                        <h3 class="text-lg font-bold mb-1">Anas Diab</h3>
                        <p class="text-gray-600 text-sm mb-2">{{ __('Chief Operating Officer') }}</p>
                    </div>
                </div>
            </div>

            <!-- Team Member 3 -->
            <div class="bg-white">
                <div class="mb-4">
                    <img 
                        src="{{ get_option('team_member_3_image', 'frontend/assets/img/whoweare/team3.jpg') }}" 
                        alt="{{ __('Sultan Al-Rashid') }}" 
                        class="w-full h-auto"
                    >
                </div>
                <div class="flex items-center justify-between mb-4">    
                    <div>
                        <h3 class="text-lg font-bold mb-1">{{ __('Sultan Al-Rashid') }}</h3>
                        <p class="text-gray-600 text-sm mb-2">{{ __('Chief Learning Officer') }}</p>
                    </div>
                </div>
            </div>

            <!-- Team Member 4 -->
            <div class="bg-white">
                <div class="mb-4">
                    <img 
                        src="{{ get_option('team_member_4_image', 'frontend/assets/img/whoweare/team4.jpg') }}" 
                        alt="Sherif Assad" 
                        class="w-full h-auto"
                    >
                </div>
                <div class="flex items-center justify-between mb-4">    
                    <div>
                        <h3 class="text-lg font-bold mb-1">Sherif Assad</h3>
                        <p class="text-gray-600 text-sm mb-2">{{ __('Head of Technology') }}</p>
                    </div>
                </div>
            </div>

            <!-- Team Member 5 -->
            <div class="bg-white sm:col-start-1 lg:col-start-2">
                <div class="mb-4">
                    <img 
                        src="{{ get_option('team_member_5_image', 'frontend/assets/img/whoweare/team5.jpg') }}" 
                        alt="Turki Al-Otaibi" 
                        class="w-full h-auto"
                    >
                </div>
                <div class="flex items-center justify-between mb-4">    
                    <div>
                        <h3 class="text-lg font-bold mb-1">Turki Al-Otaibi</h3>
                        <p class="text-gray-600 text-sm mb-2">{{ __('Head of Learning & Development') }}</p>
                    </div>
                </div>
            </div>

            <!-- Team Member 6 -->
            <div class="bg-white sm:col-start-2 lg:col-start-3">
                <div class="mb-4">
                    <img 
                        src="{{ get_option('team_member_6_image', 'frontend/assets/img/whoweare/team6.jpg') }}" 
                        alt="Hala Al-Tamimi" 
                        class="w-full h-auto"
                    >
                </div>
                <div class="flex items-center justify-between mb-4">    
                    <div>
                        <h3 class="text-lg font-bold mb-1">'Hala Al-Tamimi</h3>
                        <p class="text-gray-600 text-sm mb-2">{{ __('Director of Partnerships') }}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>







@endsection


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

