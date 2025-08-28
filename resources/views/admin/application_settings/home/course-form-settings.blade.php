@extends('layouts.admin')

@section('content')
<!-- Page content area start -->
<div class="page-content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="breadcrumb__content">
                    <div class="breadcrumb__content__left">
                        <div class="breadcrumb__title">
                            <h2>{{ __('Course Form Settings') }}</h2>
                        </div>
                    </div>
                    <div class="breadcrumb__content__right">
                        <nav aria-label="breadcrumb">
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a
                                        href="{{ route('admin.dashboard') }}">{{ __('Dashboard') }}</a></li>
                                <li class="breadcrumb-item"><a>{{ __('Application Settings') }}</a></li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    {{ __('Course Form Settings') }}
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-3 col-md-4">
                @include('admin.application_settings.home-sidebar')
            </div>
            <div class="col-lg-9 col-md-8">
                <div class="email-inbox__area bg-style">
                    <div class="item-top mb-30">
                        <h2>{{ __('Edit Course Form Settings') }}</h2>
                    </div>

                    <!-- Display success message if any -->
                    @if (session('success'))
                    <div class="alert alert-success">{{ session('success') }}</div>
                    @endif

                    <form action="{{ route('settings.course-form-settings.update') }}" method="POST"
                        class="form-horizontal" enctype="multipart/form-data">
                        @csrf

                        <!-- Course Title -->
                        <!-- <div class="form-group">
                            <label for="course_title">{{ __('Course Title') }}</label>
                            <input type="text" class="form-control" id="course_title" name="course_title"
                                value="{{ old('course_title', $courseTitle ?? '') }}">
                            @error('course_title')
                            <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div> -->

                        <!-- Course Description -->
                        <!-- <div class="form-group">
                            <label for="course_description">{{ __('Course Description') }}</label>
                            <textarea class="form-control" id="course_description"
                                name="course_description">{{ old('course_description', $courseDescription ?? '') }}</textarea>
                            @error('course_description')
                            <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div> -->

                        <!-- Course Duration -->
                        <!-- <div class="form-group">
                            <label for="course_duration">{{ __('Course Duration') }}</label>
                            <input type="text" class="form-control" id="course_duration" name="course_duration"
                                value="{{ old('course_duration', $courseDuration ?? '') }}">
                            @error('course_duration')
                            <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div> -->

                        <!-- Course Instructor -->
                        <!-- <div class="form-group">
                            <label for="course_instructor">{{ __('Course Instructor') }}</label>
                            <input type="text" class="form-control" id="course_instructor" name="course_instructor"
                                value="{{ old('course_instructor', $courseInstructor ?? '') }}">
                            @error('course_instructor')
                            <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div> -->

                        <!-- Contact Heading -->
                        <div class="form-group">
                            <label for="contact_heading">{{ __('Contact Heading') }}</label>
                            <input type="text" class="form-control" id="contact_heading" name="contact_heading"
                                value="{{ old('contact_heading', $contactHeading ?? '') }}">
                            @error('contact_heading')
                            <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div>

                        <!-- Contact Subheading -->
                        <div class="form-group">
                            <label for="contact_subheading">{{ __('Contact Subheading') }}</label>
                            <input type="text" class="form-control" id="contact_subheading" name="contact_subheading"
                                value="{{ old('contact_subheading', $contactSubheading ?? '') }}">
                            @error('contact_subheading')
                            <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div>

                        <!-- Contact Email -->
                        <div class="form-group">
                            <label for="contact_email">{{ __('Contact Email') }}</label>
                            <input type="email" class="form-control" id="contact_email" name="contact_email"
                                value="{{ old('contact_email', $contactEmail ?? '') }}">
                            @error('contact_email')
                            <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div>

                        <!-- Contact Location -->
                        <div class="form-group">
                            <label for="contact_location">{{ __('Contact Location') }}</label>
                            <input type="text" class="form-control" id="contact_location" name="contact_location"
                                value="{{ old('contact_location', $contactLocation ?? '') }}">
                            @error('contact_location')
                            <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div>

                        <!-- Contact Phone -->
                        <div class="form-group">
                            <label for="contact_phone">{{ __('Contact Phone') }}</label>
                            <input type="text" class="form-control" id="contact_phone" name="contact_phone"
                                value="{{ old('contact_phone', $contactPhone ?? '') }}">
                            @error('contact_phone')
                            <div class="text-danger">{{ $message }}</div>
                            @enderror
                        </div>

                        <div class="row">
                            <div class="col-12">
                                <button type="submit" class="btn btn-primary">{{ __('Save Settings') }}</button>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>
<!-- Page content area end -->
@endsection


@push('style')
<link rel="stylesheet" href="{{asset('admin/css/custom/image-preview.css')}}">
@endpush

@push('script')
<script src="{{asset('admin/js/custom/image-preview.js')}}"></script>
@endpush