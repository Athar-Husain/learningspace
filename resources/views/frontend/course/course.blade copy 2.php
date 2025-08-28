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

@section('content')
<main>
    <!-- Banner -->
    <section class="mb-5">
        <div class="container">
            <img src="{{ asset('frontend/assets/img/') }}" alt="Latest News" class="img-fluid w-100">
        </div>
    </section>






    <!-- Tabs -->
    <section class="mb-5">
        <div class="container">
            <ul class="nav nav-tabs justify-content-center mb-3" id="courseTabs" role="tablist">
                @php
                $tabs = [
                'Software Development',
                'Big Data & AI',
                'Cyber Security',
                'Infrastructure',
                'Digital
                Marketing',
                'Technical Support & Operations'
                ];
                $tabIds = ['software', 'bigdata', 'cyber', 'infra', 'digital', 'support'];
                @endphp
                @foreach($tabs as $index => $label)
                <li class="nav-item" role="presentation">
                    <button class="nav-link {{ $index === 0 ? 'active' : '' }}" id="{{ $tabIds[$index] }}-tab"
                        data-bs-toggle="tab" data-bs-target="#{{ $tabIds[$index] }}" type="button"
                        role="tab">{{ $label }}</button>
                </li>
                @endforeach
            </ul>

            <div class="tab-content" id="courseTabContent">
                <!-- Tab Pane Example (Repeat as needed) -->
                <div class="tab-pane fade show active" id="software" role="tabpanel">
                    <div class="row g-4">
                        <!-- Course Card Example -->
                        <div class="col-md-6 col-lg-4">
                            <div class="card">
                                <div class="position-relative">
                                    <img src="{{ asset('assets/images/courses/Image.png') }}" class="card-img-top"
                                        alt="Course">
                                    <span class="badge bg-danger position-absolute top-0 start-0 m-2">★ NEW
                                        COURSE</span>
                                    <span
                                        class="badge bg-warning text-dark position-absolute top-0 end-0 m-2">RECORDED</span>
                                </div>
                                <div class="card-body">
                                    <div class="mb-2">
                                        <span class="badge bg-secondary">4 Weeks</span>
                                        <span class="badge bg-secondary">Beginner</span>
                                    </div>
                                    <h5 class="card-title">Full-Stack Web Development</h5>
                                    <p class="card-text">Master front-end and back-end technologies: HTML, CSS, JS,
                                        Node.js, and databases.</p>
                                    <a href="{{ url('course-details') }}" class="btn btn-outline-danger btn-sm">VIEW
                                        MORE</a>
                                </div>
                            </div>
                        </div>
                        <!-- Repeat other course cards similarly -->
                    </div>
                </div>

                <!-- Placeholder Panes -->
                @foreach(array_slice($tabIds, 1) as $tabId)
                <div class="tab-pane fade" id="{{ $tabId }}" role="tabpanel">
                    <p>Content for {{ ucfirst(str_replace('-', ' ', $tabId)) }} coming soon.</p>
                </div>
                @endforeach
            </div>
        </div>
    </section>




    <!-- Instructors -->
    <section class="py-5 border-top border-danger">
        <div class="container">
            <div class="d-flex justify-content-between align-items-center mb-4">
                <h4 class="h3">Our Top Instructors</h4>
                <img src="{{ asset('assets/images/courses/top-instructors.png') }}" class="h-25" alt="">
            </div>
            <div class="row g-4">
                @php
                $instructors = [
                ['name' => 'Fahad Al-Mutairi', 'role' => 'Data Science Instructor', 'img' => 'profileMai.jpg'],
                ['name' => 'Anas Diab', 'role' => 'Cloud Computing Lecturer', 'img' => 'profileMai-1.jpg'],
                ['name' => 'Sultan Al-Rashid', 'role' => 'Data Analytics Trainer', 'img' => 'profileMai-2.jpg'],
                ['name' => 'Sherif Assad', 'role' => 'Cybersecurity Trainer', 'img' => 'profileMai-3.jpg'],
                ['name' => 'Turki Al-Otaibi', 'role' => 'AI Trainer', 'img' => 'profileMai-4.jpg'],
                ['name' => 'Hala Al-Tamimi', 'role' => 'Digital Marketing Expert', 'img' => 'profileMai-5.jpg'],
                ];
                @endphp
                @foreach($instructors as $inst)
                <div class="col-md-4 col-lg-2">
                    <div class="text-center">
                        <img src="{{ asset('assets/images/courses/instructors/' . $inst['img']) }}"
                            class="img-fluid mb-2" alt="{{ $inst['name'] }}">
                        <h6 class="mb-0">{{ $inst['name'] }}</h6>
                        <small class="text-muted">{{ $inst['role'] }}</small><br>
                        <img src="{{ asset('assets/images/courses/linkedin.png') }}" class="mt-1" alt="LinkedIn">
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section class="py-5">
        <div class="container">
            <div class="row g-5">
                <!-- Contact Info -->
                <div class="col-md-6">
                    <h2 class="display-6 fw-bold">We’d love to hear from you!</h2>
                    <p class="mt-4 text-muted">Our team is here to assist you. Choose your preferred way to connect.</p>
                    <ul class="list-unstyled mt-4">
                        <li class="mb-4 d-flex">
                            <img src="{{ asset('assets/images/icons/mail.png') }}" class="me-3" height="24">
                            <div>
                                <strong>Email</strong><br>
                                customer.support@learningspace.com
                            </div>
                        </li>
                        <li class="mb-4 d-flex">
                            <img src="{{ asset('assets/images/icons/location.png') }}" class="me-3" height="28">
                            <div>
                                <strong>Location</strong><br>
                                Riyadh King Abdul Aziz Branch Rd, Alyasmin, Riyadh 13322, KSA.
                            </div>
                        </li>
                        <li class="d-flex">
                            <img src="{{ asset('assets/images/icons/phone.png') }}" class="me-3" height="20">
                            <div>
                                <strong>Phone</strong><br>
                                198421
                            </div>
                        </li>
                    </ul>
                </div>

                <!-- Contact Form -->
                <div class="col-md-6">
                    <!-- <div class="bg-white p-4 p-md-5 shadow-sm"> -->
                    @include('frontend.partials.contact-form')
                    <!-- </div> -->
                </div>
            </div>
        </div>
    </section>


</main>
@endsection