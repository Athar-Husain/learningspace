@php
    $authUser = @auth()->user();

    // Helper function to check if a route is active for main nav items
    function isActiveRoute($routeNames, $checkChildren = false) {
        if (is_array($routeNames)) {
            foreach ($routeNames as $routeName) {
                if ($checkChildren) {
                    if (Request::is($routeName . '*')) {
                        return true;
                    }
                } else {
                    if (Route::currentRouteNamed($routeName)) {
                        return true;
                    }
                }
            }
        } else {
            if ($checkChildren) {
                if (Request::is($routeNames . '*')) {
                    return true;
                }
            } else {
                if (Route::currentRouteNamed($routeNames)) {
                    return true;
                }
            }
        }
        return false;
    }

    // Determine if the 'Courses' dropdown itself should be active
    $isCoursesActive = isActiveRoute(['courses', 'allcourses', 'category-courses', 'subcategory-courses'], true);

    // Determine if the 'Pages' dropdown itself should be active
    $isPagesActive = isActiveRoute('forum.index');
    if (!$isPagesActive && isset($staticMenus)) {
        foreach ($staticMenus as $staticMenu) {
            if (isActiveRoute($staticMenu->slug)) {
                $isPagesActive = true;
                break;
            }
        }
    }
    if (!$isPagesActive && isset($dynamicMenus)) {
        foreach ($dynamicMenus as $dynamicMenu) {
            if (Route::currentRouteNamed('page') && Request::route('slug') == @$dynamicMenu->page->slug) {
                $isPagesActive = true;
                break;
            }
        }
    }

@endphp



<div class="landing-menu">
    <section class="menu-section-area @auth isLoginMenu @endauth">
        <nav class="navbar sticky-header navbar-expand-lg {{ request()->route()->getName() == 'main.index'? 'nav-home': '' }}"
            id="mainNav">
            <div class="container-fluid">
                @if(request()->route()->getName() == 'main.index')
                <a class="navbar-brand sf-sticky-logo" href="{{ url('/') }}"><img
                        src="{{ getImageFile(get_option('app_black_logo')) }}" alt="Logo"></a>
                @else
                <a class="navbar-brand sf-sticky-logo" href="{{ url('/') }}"><img
                        src="{{ getImageFile(get_option('app_logo')) }}" alt="Logo"></a>
                @endif
                <a class="navbar-brand" href="{{ url('/') }}"><img src="{{ getImageFile(get_option('app_logo')) }}"
                        alt="Logo"></a>

                <li class="nav-item dropdown menu-round-btn menu-language-btn dropdown-top-space d-lg-none"
                    style="list-style: none;">
                    <a class="nav-link" href="#">
                        <img src="{{ asset($selectedLanguage->flag) }}" alt="Flag" class="radius-50">
                    </a>
                    <ul class="dropdown-menu {{ $selectedLanguage->rtl == 1 ? 'dropdown-menu-start' : 'dropdown-menu-end' }}"
                        data-bs-popper="none">
                        @foreach (appLanguages() as $app_lang)
                        <li><a class="dropdown-item" href="{{ url('/local/' . $app_lang->iso_code) }}">
                                <img src="{{ asset($app_lang->flag) }}" alt="Flag"
                                    class="radius-50">{{ $app_lang->language }}</a></li>
                        @endforeach
                    </ul>
                </li>

                <button class="navbar-toggler sf-navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="main-menu-collapse collapse navbar-collapse" id="navbarSupportedContent">

                    <div class="header-nav-left-side me-auto d-flex">
                        <form action="#" style="border: 1px solid black; padding: 2px; border-radius: 4px;">
                            <div class="input-group landing">
                                <button class="input-group-text pe-0" id="basic-addon1"><img
                                        src="{{ asset('frontend/assets/img/icons-svg/search-2.svg') }}"
                                        alt="Search"></button>
                                <input class="form-control me-2 searchCourse" id="searchCourse" type="search"
                                    name="keyword" value="{{ request('keyword') }}"
                                    placeholder="{{ __('Search Course') }}..." aria-label="Search">
                            </div>

                            <div class="search-bar-suggestion-box searchBox d-none custom-scrollbar">
                                <ul class="appendCourseSearchList">

                                </ul>
                            </div>
                            </form>
                    </div>
                    <div class="header-nav-right-side d-flex">

                        <ul class="navbar-nav">

                            <li class="nav-item">
                                <a class="nav-link {{ isActiveRoute('main.index') ? 'active' : '' }}" href="{{ url('/') }}">{{ __('Home') }}</a>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle {{ $isCoursesActive ? 'active' : '' }}" href="#" id="librariesDropdown"
                                    data-bs-toggle="dropdown" aria-expanded="false">
                                    {{ __('Courses') }}
                                </a>
                                <ul class="dropdown-menu {{ $selectedLanguage->rtl == 1 ? 'dropdown-menu-end' : '' }}"
                                    aria-labelledby="librariesDropdown">
                                    <li><a class="dropdown-item {{ isActiveRoute('courses') ? 'active' : '' }}" href="{{ route('courses') }}">{{ __('Courses') }}</a></li>
                                    @foreach ($categories as $category)
                                    <li>
                                        <a href="{{ route('category-courses', $category->slug) }}"
                                            class="dropdown-item {{ isActiveRoute('category-courses') && Request::route('slug') == $category->slug ? 'active' : '' }} @if (count($category->subcategories) > 0) dropdown-toggle @endif">
                                            {{ $category->name }}
                                        </a>
                                        @if (count($category->subcategories) > 0)
                                        <ul class="submenu dropdown-menu">
                                            @foreach ($category->subcategories as $subcategory)
                                            <li>
                                                <a class="dropdown-item {{ isActiveRoute('subcategory-courses') && Request::route('slug') == $subcategory->slug ? 'active' : '' }}"
                                                    href="{{ route('subcategory-courses', $subcategory->slug) }}">{{ $subcategory->name }}</a>
                                            </li>
                                            @endforeach
                                        </ul>
                                        @endif
                                    </li>
                                    @endforeach
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a href="{{ route('allcourses') }}"
                                            class="dropdown-item {{ isActiveRoute('allcourses') ? 'active' : '' }}">{{ __('All Courses') }}</a></li>
                                </ul>
                            </li>


                            <li class="nav-item">
                                <a class="nav-link {{ isActiveRoute('whoweare') ? 'active' : '' }}" href="{{ route('whoweare') }}">{{ __('Who We Are') }}</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link {{ isActiveRoute('blogs') ? 'active' : '' }}" href="{{ route('blogs') }}">{{ __('Latest News') }}</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link {{ isActiveRoute('media-gallery') ? 'active' : '' }}"
                                    href="{{ route('media-gallery') }}">{{ __('Media Gallery') }}</a>
                            </li>
                            <li class="nav-item"><a class="nav-link {{ isActiveRoute('contact') ? 'active' : '' }}"
                                    href="{{ route('contact') }}">{{ __('Contact') }}</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle {{ $isPagesActive ? 'active' : '' }}" href="#" id="pagesDropdown"
                                    data-bs-toggle="dropdown" aria-expanded="false">{{ __('Pages') }}</a>
                                <ul class="dropdown-menu {{ $selectedLanguage->rtl == 1 ? 'dropdown-menu-end' : '' }}">
                                    <li>
                                        <a class="dropdown-item {{ isActiveRoute('forum.index') ? 'active' : '' }}" href="{{ route('forum.index') }}">{{ __('Forum') }}</a>
                                    </li>
                                    @foreach ($staticMenus ?? [] as $staticMenu)
                                    <li><a class="dropdown-item {{ isActiveRoute($staticMenu->slug) ? 'active' : '' }}"
                                            href="{{ route($staticMenu->slug) }}">{{ __($staticMenu->name) }}</a>
                                    </li>
                                    @endforeach

                                    @foreach ($dynamicMenus ?? [] as $dynamicMenu)
                                    <li><a class="dropdown-item {{ Route::currentRouteNamed('page') && Request::route('slug') == @$dynamicMenu->page->slug ? 'active' : '' }}"
                                            href="{{ route('page', @$dynamicMenu->page->slug) }}">{{ __($dynamicMenu->name) }}</a>
                                    </li>
                                    @endforeach
                                </ul>
                            </li>

                            <li class="nav-item dropdown menu-round-btn menu-language-btn dropdown-top-space">
                                <a class="nav-link" href="#">
                                    <img src="{{ asset($selectedLanguage->flag) }}" alt="Flag" class="radius-50">
                                </a>
                                <ul class="dropdown-menu {{ $selectedLanguage->rtl == 1 ? 'dropdown-menu-start' : 'dropdown-menu-end' }}"
                                    data-bs-popper="none">
                                    @foreach (appLanguages() as $app_lang)
                                    <li><a class="dropdown-item" href="{{ url('/local/' . $app_lang->iso_code) }}">
                                            <img src="{{ asset($app_lang->flag) }}" alt="Flag"
                                                class="radius-50">{{ $app_lang->language }}</a></li>
                                    @endforeach
                                </ul>
                            </li>
                            @if (@$authUser->role != USER_ROLE_ADMIN)
                            @if (auth::user())
                            <li class="nav-item dropdown menu-round-btn menu-notification-btn dropdown-top-space">
                                <a class="nav-link menu-cart-btn" href="#">
                                    <i data-feather="bell"></i>
                                    <span
                                        class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                                        {{ count($student_notifications) + count($instructor_notifications) }}
                                    </span>
                                </a>
                                <div class="dropdown-menu {{ $selectedLanguage->rtl == 1 ? 'dropdown-menu-start' : 'dropdown-menu-end' }}"
                                    data-bs-popper="none">
                                    <ul class="nav nav-pills menu-notification-tab-list" id="pills-tab" role="tablist">
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link active" id="pills-student-tab" data-bs-toggle="pill"
                                                data-bs-target="#pills-student" type="button" role="tab"
                                                aria-controls="pills-student"
                                                aria-selected="false">{{ __('Student') }}</button>
                                        </li>
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link " id="pills-instructor-tab" data-bs-toggle="pill"
                                                data-bs-target="#pills-instructor" type="button" role="tab"
                                                aria-controls="pills-instructor"
                                                aria-selected="true">{{ __('Instructor') }}</button>
                                        </li>
                                    </ul>
                                    <div class="tab-content" id="pills-tabContent">
                                        <div class="tab-pane fade show active" id="pills-student" role="tabpanel"
                                            aria-labelledby="pills-student-tab">
                                            <div class="custom-scrollbar menu-notification-tab-content">
                                                @forelse ($student_notifications as $student_notification)
                                                <a href="{{ route('notification.url', [$student_notification->uuid]) }}"
                                                    class="message-user-item cursor d-flex align-items-center">
                                                    <div class="message-user-item-left">
                                                        <div class="d-flex align-items-center">
                                                            <div class="flex-shrink-0">
                                                                <div class="user-img-wrap position-relative radius-50">
                                                                    <img src="{{ asset($student_notification->sender->image_path) }}"
                                                                        alt="img" class="radius-50">
                                                                </div>
                                                            </div>
                                                            <div
                                                                class="flex-grow-1 {{ $selectedLanguage->rtl == 1 ? 'me-2' : 'ms-2' }}">
                                                                <h6 class="color-heading font-14">
                                                                    {{ $student_notification->sender->name }}
                                                                </h6>
                                                                <p class="font-13">
                                                                    {{ $student_notification->text }}
                                                                </p>
                                                                <div class="font-11 color-gray mt-1">
                                                                    {{ @$student_notification->created_at->diffForHumans() }}
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </a>
                                                @empty
                                                <div class="no-notification-found-box">
                                                    <p class="text-center">{{ __('No Data Found') }}</p>
                                                </div>
                                                @endforelse
                                            </div>
                                            @if (count($student_notifications))
                                            <div class="dropdown-divider"></div>
                                            <form action="{{ route('notification.all-read') }}" method="POST">
                                                @csrf
                                                <input type="hidden" name="type" value="3">
                                                <button type="submit"
                                                    class="dropdown-item dropdown-footer">{{ __('Mark all as read') }}</button>
                                            </form>
                                            @endif
                                        </div>

                                        <div class="tab-pane fade" id="pills-instructor" role="tabpanel"
                                            aria-labelledby="pills-instructor-tab">
                                            <div class="custom-scrollbar menu-notification-tab-content">
                                                @forelse ($instructor_notifications as $instructor_notification)
                                                <a href="{{ route('notification.url', [$instructor_notification->uuid]) }}"
                                                    class="message-user-item d-flex align-items-center">
                                                    <div class="message-user-item-left">
                                                        <div class="d-flex align-items-center">
                                                            <div class="flex-shrink-0">
                                                                <div class="user-img-wrap position-relative radius-50">
                                                                    <img src="{{ asset(@$instructor_notification->sender->image_path) }}"
                                                                        alt="img" class="radius-50">
                                                                </div>
                                                            </div>
                                                            <div
                                                                class="flex-grow-1 {{ $selectedLanguage->rtl == 1 ? 'me-2' : 'ms-2' }}">
                                                                <h6 class="color-heading font-14">
                                                                    {{ @$instructor_notification->sender->name }}
                                                                </h6>
                                                                <p class="font-13">
                                                                    {{ $instructor_notification->text }}
                                                                </p>
                                                                <div class="font-11 color-gray mt-1">
                                                                    {{ @$instructor_notification->created_at->diffForHumans() }}
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </a>
                                                @empty
                                                <div class="no-notification-found-box">
                                                    <p class="text-center">{{ __('No Data Found') }}</p>
                                                </div>
                                                @endforelse
                                            </div>
                                            @if (count($instructor_notifications))
                                            <div class="dropdown-divider"></div>
                                            <form action="{{ route('notification.all-read') }}" method="POST">
                                                @csrf
                                                <input type="hidden" name="type" value="2">
                                                <button type="submit"
                                                    class="dropdown-item dropdown-footer">{{ __('Mark all as read') }}</button>
                                            </form>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                            </li>
                            @endif

                            <li class="nav-item menu-round-btn menu-cart-btn">
                                <a class="nav-link menu-cart-btn" aria-current="page"
                                    href="{{ route('student.cartList') }}">
                                    <i data-feather="shopping-bag"></i>
                                    <span
                                        class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger cartQuantity">
                                        {{ @$cartQuantity }}
                                    </span>
                                </a>
                            </li>
                            @endif
                            @if (Route::has('login'))
                            @auth

                            <li class="nav-item dropdown menu-round-btn menu-user-btn dropdown-top-space">
                                <a class="nav-link" href="#">
                                    <img src="{{ asset(auth::user()->image_path) }}" alt="user" class="radius-50">
                                </a>
                                <div class="dropdown-menu-profile dropdown-menu {{ $selectedLanguage->rtl == 1 ? 'dropdown-menu-start' : 'dropdown-menu-end' }}"
                                    data-bs-popper="none">

                                    <div class="dropdown-user-info">
                                        <div class="message-user-item d-flex align-items-center">
                                            <div class="message-user-item-left">
                                                <div class="d-flex align-items-center">
                                                    <div class="flex-shrink-0">
                                                        <div class="user-img-wrap position-relative radius-50">
                                                            <img src="{{ asset(auth::user()->image_path) }}" alt="img"
                                                                class="radius-50">
                                                        </div>
                                                    </div>
                                                    <div
                                                        class="flex-grow-1 {{ $selectedLanguage->rtl == 1 ? 'me-2' : 'ms-2' }}">
                                                        <h6 class="color-heading font-14">{{ auth::user()->name }}
                                                        </h6>
                                                        <p class="font-13">{{ auth::user()->email }}</p>
                                                    </div>
                                                </div>
                                            </div>
                                    </div>
                                    </div>
                                    @if (@$authUser->role != USER_ROLE_ADMIN)
                                    <ul class="user-dropdown-item-box">
                                        @if (Auth::user()->role == USER_ROLE_INSTRUCTOR &&
                                        @$authUser->instructor->status == STATUS_APPROVED)
                                        <li>
                                            <a class="dropdown-item" href="{{ route('instructor.dashboard') }}">
                                                <span class="iconify" data-icon="bxs:dashboard"></span>
                                                {{ __('Instructor Panel') }}
                                            </a>
                                        </li>
                                        @endif
                                        <li class="nav-item">
                                            <a class="dropdown-item {{ isActiveRoute('student.dashboard') ? 'active' : '' }}" href="{{ route('student.dashboard') }}">
                                                <span class="iconify" data-icon="bxs:dashboard"></span>
                                                {{ __('Student Panel') }}</a>
                                        </li>

                                        <li><a class="dropdown-item {{ isActiveRoute('student.my-learning') ? 'active' : '' }}" href="{{ route('student.my-learning') }}"><span
                                                        class="iconify"
                                                        data-icon="akar-icons:book"></span>{{ __('My Learning') }}
                                            </a></li>

                                        @if (@$authUser->role == USER_ROLE_STUDENT &&
                                        auth()->user()->student->organization_id != null)
                                        <li>
                                            <a class="dropdown-item {{ isActiveRoute('student.organization_course') ? 'active' : '' }}"
                                                href="{{ route('student.organization_course') }}"><span
                                                    class="iconify mr-15" data-icon="ion:log-in-outline"></span>
                                                {{ __('Organization Course') }}</a>
                                        </li>
                                        @endif
                                        <li>
                                            <a class="dropdown-item {{ isActiveRoute('student.my-consultation') ? 'active' : '' }}" href="{{ route('student.my-consultation') }}">
                                                <span class="iconify mr-15" data-icon="ic:round-support-agent"></span>
                                                {{ __('My Consultation') }}
                                            </a>
                                        </li>
                                        @if (isAddonInstalled('LMSZAIPRODUCT'))
                                        <li>
                                            <a class="dropdown-item {{ isActiveRoute('lms_product.student.purchase_list') ? 'active' : '' }}"
                                                href="{{ route('lms_product.student.purchase_list') }}">
                                                <span class="iconify mr-15" data-icon="carbon:product"></span>
                                                {{ __('My Product') }}
                                            </a>
                                        </li>
                                        @endif
                                        @if (Auth::user()->role == USER_ROLE_STUDENT)
                                        <li>
                                            <a class="dropdown-item {{ isActiveRoute('student.chat.index') ? 'active' : '' }}" href="{{ route('student.chat.index') }}">
                                                <span class="iconify" data-icon="ic:outline-chat"></span>
                                                {{ __('Chat') }}</a>
                                        </li>
                                        @endif
                                        <li><a class="dropdown-item" href="{{ route('student.wishlist') }}"><span
                                                    class="iconify"
                                                    data-icon="bx:bx-heart"></span>{{ __('Wishlist') }}</a>
                                        </li>
                                        @if (get_option('subscription_mode'))
                                        <li>
                                            <a class="dropdown-item" href="{{ route('subscription_panel') }}"><span
                                                    class="iconify" data-icon="akar-icons:desktop-device"></span>
                                                {{ __('Subscription Panel') }}</a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item"
                                                href="{{ route('student.subscription_plan') }}"><span class="iconify"
                                                    data-icon="eos-icons:subscriptions-created"></span>
                                                {{ __('Subscription Plan') }}</a>
                                        </li>
                                        @endif
                                        @if (auth()->user()->role != USER_ROLE_STUDENT && get_option('saas_mode'))
                                        <li>
                                            <a class="dropdown-item" href="{{ route('saas_panel') }}"><span
                                                    class="iconify" data-icon="ic:outline-view-list"></span>
                                                {{ __('SaaS Panel') }}</a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item" href="{{ route('saas_plan') }}"><span
                                                    class="iconify" data-icon="mdi:subscriptions"></span>
                                                {{ __('SaaS Plan') }}</a>
                                        </li>
                                        @endif
                                    </ul>
                                    <ul class="user-dropdown-item-box">
                                        <li>
                                            <a class="dropdown-item" href="{{ route('student.profile') }}"><span
                                                    class="iconify" data-icon="bytesize:settings"></span>
                                                {{ __('Profile Settings') }}</a>
                                        </li>
                                        @if (@$authUser->role == USER_ROLE_STUDENT && get_option('device_control'))
                                        <li>
                                            <a class="dropdown-item"
                                                href="{{ route('student.all_login_device') }}"><span class="iconify"
                                                    data-icon="akar-icons:desktop-device"></span>
                                                {{ __('Device Control') }}</a>
                                        </li>
                                        @endif

                                        @if (Auth::user()->role == USER_ROLE_STUDENT ||
                                        Auth::user()->is_affiliator == AFFILIATOR ||
                                        (Auth::user()->role == USER_ROLE_INSTRUCTOR && @$authUser->instructor->status ==
                                        STATUS_APPROVED) ||
                                        (Auth::user()->role == USER_ROLE_ORGANIZATION &&
                                        @$authUser->organization->status == STATUS_APPROVED))
                                        <li>
                                            <a class="dropdown-item" href="{{ route('wallet./') }}"><span
                                                    class="iconify" data-icon="et:wallet"></span>
                                                {{ __('My Wallet') }}
                                            </a>
                                        </li>
                                        @endif
                                    </ul>

                                    @if (Auth::user()->is_affiliator == NOT_AFFILIATOR && get_option('referral_status')
                                    == 1)
                                    <ul class="user-dropdown-item-box">
                                        <li>
                                            <a class="dropdown-item"
                                                href="{{ route('affiliate.become-an-affiliate') }}"><span
                                                    class="iconify"
                                                    data-icon="tabler:affiliate"></span>{{ __('Become an
                                                                                                                                                                                                                                                    Affiliator') }}
                                            </a>
                                        </li>
                                    </ul>
                                    @elseif(Auth::user()->is_affiliator == AFFILIATE_REQUEST_PENDING &&
                                    get_option('referral_status') == 1)
                                    <ul class="user-dropdown-item-box">
                                        <li>
                                            <a class="dropdown-item" href="#"><span class="iconify"
                                                    data-icon="tabler:affiliate"></span>{{ __('Affiliate Request Pending') }}
                                            </a>
                                        </li>
                                    </ul>
                                    @elseif(Auth::user()->is_affiliator == AFFILIATE_REQUEST_REJECTED &&
                                    get_option('referral_status') == 1)
                                    <ul class="user-dropdown-item-box">
                                        <li>
                                            <a class="dropdown-item" href="#"><span class="iconify"
                                                    data-icon="tabler:affiliate"></span>{{ __('Affiliate Request Rejected') }}
                                            </a>
                                        </li>
                                    </ul>
                                    @elseif(Auth::user()->is_affiliator == AFFILIATOR)
                                    <ul class="user-dropdown-item-box">
                                        <li>
                                            <a class="dropdown-item" href="{{ route('affiliate.dashboard') }}"><span
                                                    class="iconify" data-icon="tabler:affiliate"></span>
                                                {{ __('Affiliator Panel') }}
                                            </a>
                                        </li>
                                    </ul>
                                    @endif
                                    @endif
                                    @if (@$authUser->role == USER_ROLE_ADMIN)
                                    <ul class="user-dropdown-item-box">
                                        <li>
                                            <a class="dropdown-item" href="{{ route('admin.dashboard') }}">
                                                <svg xmlns="http://www.w3.org/2000/svg"
                                                    xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true"
                                                    role="img" class="iconify iconify--bxs" width="1em" height="1em"
                                                    preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"
                                                    data-icon="bxs:dashboard">
                                                    <path fill="currentColor"
                                                        d="M4 13h6a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1zm-1 7a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1v-4a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1v4zm10 0a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1v-7a1 1 0 0 0-1-1h-6a1 1 0 0 0-1 1v7zm1-10h6a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1h-6a1 1 0 0 0-1 1v5a1 1 0 0 0 1 1z">
                                                    </path>
                                                </svg>
                                                {{ __('Admin Dashboard') }}
                                            </a>
                                        </li>
                                    </ul>
                                    @endif
                                    <ul class="user-dropdown-item-box">
                                        <li><a class="dropdown-item" href="{{ route('support-ticket-faq') }}"><span
                                                    class="iconify"
                                                    data-icon="bx:bx-help-circle"></span>{{ __('Help
                                                                                                                                                                                                                            Support') }}
                                            </a></li>
                                        <li><a class="dropdown-item" href="{{ route('logout') }}"><span class="iconify"
                                                    data-icon="ic:round-logout"></span>{{ __('Logout') }}</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <!-- Menu User Dropdown Menu Option End -->
                            @else
                            <li class="nav-item  menu-sign-in-btn">
                                <a href="{{ route('login') }}" class="nav-link theme-button1"
                                    aria-current="page">{{ __('Sign
                                                                                                                                                                In') }}</a>
                            </li>

                            @if (Route::has('register'))
                            <li class="nav-item  menu-sign-in-btn">
                                <a href="{{ route('register') }}" class="nav-link theme-button1"
                                    aria-current="page">{{ __('Sign Up') }}</a>
                            </li>
                            @endif
                            @endauth
                            @endif
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        <!-- Navigation -->
    </section>
</div>

@if (isEnableOpenAI())
@include('addon.AI.content-generation')
@endif