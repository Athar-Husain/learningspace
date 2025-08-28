@extends('layouts.app') {{-- Assuming app.blade.php includes Bootstrap and @import '~bootstrap/scss/bootstrap' --}}

@section('title', 'Future Skills Learning Center')

@section('content')


<nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
    <div class="container">
        <a class="navbar-brand" href="{{ url('/') }}">
            <img src="{{ asset('assets/images/Logo.png') }}" alt="Logo" height="40">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mainNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="mainNavbar">
            <ul class="navbar-nav ms-auto mb-2 mb-md-0 fw-semibold">
                <li class="nav-item"><a class="nav-link active text-warning border-bottom border-warning" href="{{ url('/') }}">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="{{ url('/courses') }}">Courses</a></li>
                <li class="nav-item"><a class="nav-link" href="{{ url('/whoweare') }}">Who We Are</a></li>
                <li class="nav-item"><a class="nav-link" href="#">Success Stories</a></li>
                <li class="nav-item"><a class="nav-link" href="{{ url('/news') }}">News</a></li>
                <li class="nav-item"><a class="nav-link" href="{{ url('/get-in-touch') }}">Contact</a></li>
            </ul>
            <div class="d-flex align-items-center gap-3 ms-4">
                <a href="{{ url('/get-in-touch') }}" class="btn btn-outline-warning d-flex align-items-center gap-2">
                    GET IN TOUCH <img src="{{ asset('assets/images/icons/chevron.png') }}" alt="" height="16">
                </a>
                <span class="text-secondary" role="button">العربية</span>
            </div>
        </div>
    </div>
</nav>

{{-- Hero Section --}}
<section class="position-relative overflow-hidden" style="height: 600px;">
    <img src="https://hebbkx1anhila5yf.public.blob.vercel-storage.com/c9d0b1fe1c55a154457940a1122f713924de3772.png-irVIul2ZrYacEoJKiRRBv0cYddLPXT.jpeg"
         class="position-absolute top-0 start-0 w-100 h-100 object-fit-cover" alt="Hero Image">
    <div class="position-absolute top-0 start-0 w-100 h-100 bg-dark bg-opacity-50"></div>
    <div class="position-relative z-1 text-center text-white d-flex flex-column justify-content-center align-items-center h-100 px-3">
        <p class="text-uppercase small tracking-wide mb-3">WHO WE ARE</p>
        <h1 class="display-4 fw-bold">Your Space to Learn<br>the Future Skills</h1>
    </div>
</section>

{{-- Learn Today Section --}}
<section class="py-5 bg-white">
    <div class="container">
        <div class="row align-items-start gy-4">
            <div class="col-md-6">
                <h2 class="display-5 fw-bold text-dark mb-4">Learn Today, Lead Tomorrow.</h2>
                <p class="text-muted mb-4">
                    Learning Space bridges Saudi Arabia's digital skills gap through innovation, expert training, and industry partnerships. Committed to Vision 2030, we empower individuals and businesses with future-ready skills.
                </p>
                <a href="#" class="btn btn-warning text-white fw-semibold px-4 py-2">LEARN MORE</a>
            </div>
            <div class="col-md-6 text-center">
                <div class="border border-primary rounded shadow">
                    <img src="https://hebbkx1anhila5yf.public.blob.vercel-storage.com/image%20111-rPYJkxoulggNKFSjZYxovB6OF95ycA.png"
                         class="img-fluid" alt="Students Image">
                </div>
            </div>
        </div>
    </div>
</section>

{{-- Vision & Mission --}}
<section class="py-5 bg-light">
    <div class="container">
        <div class="row g-5">
            <div class="col-md-6 border-end pe-md-5">
                <h2 class="text-uppercase fw-bold text-dark mb-3">OUR VISION</h2>
                <h4 class="fw-semibold text-muted mb-3">Shape the Future of Learning</h4>
                <p class="text-muted">To become the leading technical and digital skills development hub in Saudi Arabia, driving workforce transformation in alignment with Vision 2030.</p>
            </div>
            <div class="col-md-6 ps-md-5">
                <h2 class="text-uppercase fw-bold text-dark mb-3">OUR MISSION</h2>
                <h4 class="fw-semibold text-muted mb-3">Learn. Grow. Succeed</h4>
                <p class="text-muted">To equip individuals and businesses with essential skills, fostering innovation, career growth, and a knowledge-driven economy.</p>
            </div>
        </div>
    </div>
</section>

{{-- The Difference We Make --}}
<section class="py-5 bg-white">
    <div class="container">
        <div class="row g-4 mb-4">
            <div class="col-lg-6">
                <h2 class="display-5 fw-bold text-dark">The Difference<br>We Make</h2>
                <a href="#" class="btn btn-warning text-dark fw-bold text-uppercase mt-3">View our courses →</a>
            </div>
            <div class="col-md-3 bg-warning p-4 text-dark rounded">
                <div class="mb-3">
                    <i class="bi bi-lightning-charge-fill fs-3"></i>
                </div>
                <h5 class="fw-bold">Future-Ready Skills</h5>
                <p>We train learners in AI, cybersecurity, fintech, and other leading fields to keep them ahead of market trends.</p>
            </div>
            <div class="col-md-3">
                <img src="{{ asset('assets/images/whoweare/shape2.png') }}" class="img-fluid rounded" alt="Shape Image">
            </div>
        </div>

        <div class="row g-4">
            <div class="col-md-3">
                <img src="{{ asset('assets/images/whoweare/shape1.png') }}" class="img-fluid rounded" alt="Shape Image">
            </div>
            <div class="col-md-3 bg-danger text-white p-4 rounded">
                <div class="mb-3">
                    <i class="bi bi-shield-lock-fill fs-3"></i>
                </div>
                <h5 class="fw-bold">Industry-Recognized Certifications</h5>
                <p>We partner with global leaders like AWS, CompTIA, and EC-Council to provide top-tier certifications.</p>
            </div>
            <div class="col-md-3">
                <img src="{{ asset('assets/images/whoweare/shape1.png') }}" class="img-fluid rounded" alt="Shape Image">
            </div>
            <div class="col-md-3 bg-light text-dark p-4 rounded">
                <div class="mb-3">
                    <i class="bi bi-people-fill fs-3"></i>
                </div>
                <h5 class="fw-bold">Connecting Talent with Employers</h5>
                <p>Our strong employer network helps match students with the right opportunities, bridging the skills gap.</p>
            </div>
        </div>
    </div>
</section>

{{-- Our Impact --}}
<section class="py-5 text-white" style="background-color: #414141;">
    <div class="container">
        <h2 class="display-6 fw-bold mb-4">Our Impact</h2>
        <p class="text-white-50 mb-5">At Learning Space, we help businesses hire job-ready talent. With screening, soft skills training, and tailored programs, our partners get skilled professionals ready to contribute from day one.</p>

        <div class="row g-4 mb-5">
            <div class="col-md-4 text-center">
                <div class="text-warning mb-3 fs-2">📘</div>
                <h3 class="fw-bold">+50,000</h3>
                <p class="text-white-50">Graduated Trainees</p>
            </div>
            <div class="col-md-4 text-center">
                <div class="text-warning mb-3 fs-2">📚</div>
                <h3 class="fw-bold">+750</h3>
                <p class="text-white-50">Courses Completed</p>
            </div>
            <div class="col-md-4 text-center">
                <div class="text-warning mb-3 fs-2">👨‍🏫</div>
                <h3 class="fw-bold">+80</h3>
                <p class="text-white-50">Expert Instructors</p>
            </div>
        </div>

        <a href="#" class="btn btn-warning text-dark fw-semibold">GET IN TOUCH →</a>
    </div>
</section>

{{-- Partnering to Empower Talents --}}
<section class="py-5 bg-white">
    <div class="container">
        <div class="row g-4">
            <div class="col-lg-6">
                <h2 class="display-5 fw-bold text-dark mb-4">Partnering to Empower Talents</h2>
                <p class="text-muted">We team up with top partners to create learning spaces that help talents reach their goals.</p>
            </div>
            <div class="col-lg-6">
                <div class="row g-2">
                    <div class="col-6">
                        <img src="{{ asset('assets/images/whoweare/partner3.png') }}" class="img-fluid rounded" alt="Partner 3">
                    </div>
                    <div class="col-6">
                        <img src="{{ asset('assets/images/whoweare/partner4.png') }}" class="img-fluid rounded" alt="Partner 4">
                    </div>
                    <div class="col-4">
                        <img src="{{ asset('assets/images/whoweare/partner2.png') }}" class="img-fluid rounded" alt="Partner 2">
                    </div>
                    <div class="col-8">
                        <img src="{{ asset('assets/images/whoweare/partner1.png') }}" class="img-fluid rounded" alt="Partner 1">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection
