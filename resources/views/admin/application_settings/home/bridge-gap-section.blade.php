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
                            <h2>{{ __('Home Settings') }}</h2>
                        </div>
                    </div>
                    <div class="breadcrumb__content__right">
                        <nav aria-label="breadcrumb">
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a
                                        href="{{route('admin.dashboard')}}">{{__('Dashboard')}}</a></li>
                                <li class="breadcrumb-item"><a>{{__('Application Setting')}}</a></li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    {{ __('Bridge Gap Section Settings') }}</li>
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
                        <h2>{{ __('Bridge Gap Section Settings') }}</h2>
                    </div>

                    <form action="{{ route('settings.bridge-gap-section.update') }}" method="post"
                        class="form-horizontal" enctype="multipart/form-data">
                        @csrf

                        <!-- Title for the Bridge Gap Section -->
                        <div class="input__group mb-25 row">
                            <label for="bridge_gap_title" class="col-lg-3">{{ __('Bridge Gap Title') }} <span
                                    class="text-danger">*</span></label>
                            <div class="col-lg-9">
                                <input type="text" name="bridge_gap_title" id="bridge_gap_title"
                                    value="{{ @$home->bridge_gap_title }}" class="form-control" required>
                            </div>
                        </div>

                        <!-- Description for the Bridge Gap Section -->
                        <div class="input__group mb-25 row">
                            <label for="bridge_gap_description" class="col-lg-3">{{ __('Bridge Gap Description') }}
                                <span class="text-danger">*</span></label>
                            <div class="col-lg-9">
                                <textarea name="bridge_gap_description" id="bridge_gap_description" class="form-control"
                                    required>{{ @$home->bridge_gap_description }}</textarea>
                            </div>
                        </div>

                        <!-- Button Name -->
                        <div class="input__group mb-25 row">
                            <label for="bridge_gap_button_name"
                                class="col-lg-3">{{ __('Bridge Gap Button Name') }}</label>
                            <div class="col-lg-9">
                                <input type="text" name="bridge_gap_button_name" id="bridge_gap_button_name"
                                    value="{{ @$home->bridge_gap_button_name }}" class="form-control">
                            </div>
                        </div>

                        <!-- Button Link -->
                        <div class="input__group mb-25 row">
                            <label for="bridge_gap_button_link"
                                class="col-lg-3">{{ __('Bridge Gap Button Link') }}</label>
                            <div class="col-lg-9">
                                <input type="text" name="bridge_gap_button_link" id="bridge_gap_button_link"
                                    value="{{ @$home->bridge_gap_button_link }}" class="form-control">
                            </div>
                        </div>

                        <!-- Show Bridge Gap Section (Boolean) -->
                        <div class="input__group mb-25 row">
                            <label for="bridge_gap_show" class="col-lg-3">{{ __('Show Bridge Gap Section') }}</label>
                            <div class="col-lg-9">
                                <select class="form-control" name="bridge_gap_show" id="bridge_gap_show">
                                    <option value="1" {{ @$home->bridge_gap_show == 1 ? 'selected' : '' }}>
                                        {{ __('Yes') }}</option>
                                    <option value="0" {{ @$home->bridge_gap_show == 0 ? 'selected' : '' }}>
                                        {{ __('No') }}</option>
                                </select>
                            </div>
                        </div>

                        <!-- Bridge Gap Section Image -->
                        <div class="input__group mb-25 row">
                            <label class="col-lg-3">{{ __('Bridge Gap Image') }}</label>
                            <div class="col-lg-5">
                                <div class="upload-img-box">
                                    @if( @$home->bridge_gap_image)
                                    <img src="{{ getImageFile(@$home->bridge_gap_image) }}">
                                    @else
                                    <img src="" alt="img">
                                    @endif
                                    <input type="file" name="bridge_gap_image" id="bridge_gap_image" accept="image/*"
                                        onchange="previewFile(this)">
                                    <div class="upload-img-box-icon">
                                        <i class="fa fa-camera"></i>
                                        <p class="m-0">{{ __('Bridge Gap Image') }}</p>
                                    </div>
                                </div>
                                @if ($errors->has('bridge_gap_image'))
                                <span class="text-danger"><i class="fas fa-exclamation-triangle"></i>
                                    {{ $errors->first('bridge_gap_image') }}</span>
                                @endif
                                <p><span class="text-black">{{ __('Accepted Files') }}:</span> PNG,SVG <br> <span
                                        class="text-black">{{ __('Recommend Size') }}:</span> 800 x 540 (1MB)</p>
                            </div>
                        </div>

                        <!-- Submit Button -->
                        <div class="row">
                            <div class="col-12">
                                <div class="input__group general-settings-btn">
                                    <button type="submit" class="btn btn-blue">{{ __('Update') }}</button>
                                </div>
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