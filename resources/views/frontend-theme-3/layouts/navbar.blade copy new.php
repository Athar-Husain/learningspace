@php
$authUser = @auth()->user();
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
                
                {{-- MOBILE ONLY LANGUAGE SWITCHER START --}}
                {{-- This 'd-lg-none' class makes it hidden on large (desktop) screens and visible on smaller ones --}}
                <li class="nav-item dropdown menu-round-btn menu-language-btn dropdown-top-space d-lg-none" style="list-style: none;"> 
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
                {{-- MOBILE ONLY LANGUAGE SWITCHER END --}}

                <p>check</p> {{-- Your reference point --}}

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

                            {{-- DESKTOP ONLY LANGUAGE SWITCHER START --}}
                            {{-- This 'd-none d-lg-block' class makes it hidden on smaller screens and visible on large ones --}}
                            <li class="nav-item dropdown menu-round-btn menu-language-btn dropdown-top-space d-none d-lg-block">
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
                            {{-- DESKTOP ONLY LANGUAGE SWITCHER END --}}


                            <li class="nav-item"><a class="nav-link " href="{{ url('/') }}">{{ __('Home') }}</a>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="{{ route('courses') }}" id="librariesDropdown"
                                    aria-expanded="false">
                                    {{ __('Courses') }}
                                </a>
                                <ul class="dropdown-menu {{ $selectedLanguage->rtl == 1 ? 'dropdown-menu-end' : '' }}"
                                    aria-labelledby="librariesDropdown">
                                    @foreach ($categories as $category)
                                    <li>
                                        <a href="{{ route('category-courses', $category->slug) }}"
                                            class="dropdown-item @if (count($category->subcategories) > 0) dropdown-toggle @endif">
                                            {{ $category->name }}
                                        </a>
                                        @if (count($category->subcategories) > 0)
                                        <ul class="submenu dropdown-menu">
                                            @foreach ($category->subcategories as $subcategory)
                                            <li>
                                                <a class="dropdown-item"
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
                                            class="dropdown-item">{{ __('All Courses') }}</a></li>
                                </ul>
                            </li>


                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('whoweare') }}">{{ __('Who We Are') }}</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('blogs') }}">{{ __('Latest News') }}</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link"
                                    href="{{ route('media-gallery') }}">{{ __('Media Gallery') }}</a>
                            </li>
                            <li class="nav-item"><a class="nav-link"
                                    href="{{ route('contact') }}">{{ __('Contact') }}</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown"
                                    data-bs-toggle="dropdown">{{ __('Pages') }}</a>
                                <ul class="dropdown-menu {{ $selectedLanguage->rtl == 1 ? 'dropdown-menu-end' : '' }}">
                                    <li>
                                        <a class="dropdown-item" href="{{ route('forum.index') }}">{{ __('Forum') }}</a>
                                    </li>
                                    @foreach ($staticMenus ?? [] as $staticMenu)
                                    <li><a class="dropdown-item"
                                            href="{{ route($staticMenu->slug) }}">{{ __($staticMenu->name) }}</a>
                                    </li>
                                    @endforeach

                                    @foreach ($dynamicMenus ?? [] as $dynamicMenu)
                                    <li><a class="dropdown-item"
                                            href="{{ route('page', @$dynamicMenu->page->slug) }}">{{ __($dynamicMenu->name) }}</a>
                                    </li>

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

                            @if (isEnableOpenAI())
                            <li class="nav-item menu-round-btn">
                                <a id="ai-content-toggle" class="nav-link" aria-current="page">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                        <path fill="currentColor"
                                            d="M8.356 5H7.01L5 13h1.028l.464-1.875h2.316L9.26 13h1.062Zm-1.729 5.322L7.644 5.95h.045l.984 4.373ZM11.238 13V5h1v8Zm.187 1H4V4h10v4.78a5.504 5.504 0 0 1 4-.786V6h-2V4a2.006 2.006 0 0 0-2-2h-2V0h-2v2H8V0H6v2H4a2.006 2.006 0 0 0-2 2v2H0v2h2v2H0v2h2v2a2.006 2.006 0 0 0 2 2h2v2h2v-2h2v2h2v-1.992A5.547 5.547 0 0 1 11.425 14Zm2.075-.5A3.5 3.5 0 1 1 17 17a3.499 3.499 0 0 1-3.5-3.5ZM17 19c-2.336 0-7 1.173-7 3.5V24h14v-1.5c0-2.328-4.664-3.5-7-3.5Z" />
                                    </svg>
                                </a>
                            </li>
                            @endif

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
                                            <a class="dropdown-item" href="{{ route('student.dashboard') }}">
                                                <span class="iconify" data-icon="bxs:dashboard"></span>
                                                {{ __('Student Panel') }}</a>
                                        </li>

                                        <li><a class="dropdown-item" href="{{ route('student.my-learning') }}"><span
                                                    class="iconify"
                                                    data-icon="akar-icons:book"></span>{{ __('My Learning') }}
                                            </a></li>

                                        @if (@$authUser->role == USER_ROLE_STUDENT &&
                                        auth()->user()->student->organization_id != null)
                                        <li>
                                            <a class="dropdown-item"
                                                href="{{ route('student.organization_course') }}"><span
                                                    class="iconify mr-15" data-icon="ion:log-in-outline"></span>
                                                {{ __('Organization Course') }}</a>
                                        </li>
                                        @endif
                                        <li>
                                            <a class="dropdown-item" href="{{ route('student.my-consultation') }}">
                                                <span class="iconify mr-15" data-icon="ic:round-support-agent"></span>
                                                {{ __('My Consultation') }}
                                            </a>
                                        </li>
                                        @if (isAddonInstalled('LMSZAIPRODUCT'))
                                        <li>
                                            <a class="dropdown-item"
                                                href="{{ route('lms_product.student.purchase_list') }}">
                                                <span class="iconify mr-15" data-icon="carbon:product"></span>
                                                {{ __('My Product') }}
                                            </a>
                                        </li>
                                        @endif
                                        @if (Auth::user()->role == USER_ROLE_STUDENT)
                                        <li>
                                            <a class="dropdown-item" href="{{ route('student.chat.index') }}">
                                                <span class="iconify" data-icon="ic:outline-chat"></span>
                                                {{ __('Chat') }}</a>
                                        </li>
                                        @endif
                                        <li><a class="dropdown-item" href="{{ route('student.wishlist') }}"><span
                                                    class="iconify"
                                                    data-icon="uiw:heart-o"></span>{{ __('Wishlist') }}</a>
                                        </li>
                                        <li><a class="dropdown-item" href="{{ route('student.enrolled-course') }}"><span
                                                    class="iconify"
                                                    data-icon="fluent:hat-graduation-16-regular"></span>{{ __('Enrolled Course') }}
                                            </a></li>
                                        <li><a class="dropdown-item" href="{{ route('student.bundle-course') }}"><span
                                                    class="iconify"
                                                    data-icon="icon-park-outline:bundle-diagonal"></span>{{ __('Bundle Course') }}
                                            </a></li>
                                        <li><a class="dropdown-item"
                                                href="{{ route('student.purchase-history') }}"><span class="iconify"
                                                    data-icon="icon-park-outline:history"></span>{{ __('Purchase History') }}
                                            </a></li>
                                        <li><a class="dropdown-item"
                                                href="{{ route('student.orders') }}"><span class="iconify"
                                                    data-icon="icon-park-outline:history"></span>{{ __('Order History') }}
                                            </a></li>
                                        <li><a class="dropdown-item" href="{{ route('student.profile') }}"><span
                                                    class="iconify" data-icon="healthicons:ui-user-profile"></span>
                                                {{ __('Profile') }}</a></li>
                                        <li><a class="dropdown-item" href="{{ route('student.account-settings') }}"><span
                                                    class="iconify" data-icon="ci:settings-filled"></span>
                                                {{ __('Account Settings') }}</a></li>
                                        <li><a class="dropdown-item" href="{{ route('student.become-instructor') }}"><span
                                                    class="iconify"
                                                    data-icon="mdi:human-male-board-poll"></span>{{ __('Become an Instructor') }}
                                            </a></li>
                                    </ul>
                                    @endif

                                    <div class="dropdown-footer-btn">
                                        <a href="{{ route('logout') }}" class="btn btn-primary">
                                            <span class="iconify" data-icon="clarity:logout-line"></span>
                                            {{ __('Logout') }}
                                        </a>
                                    </div>
                                    </div>
                            </li>
                            @else
                            <li class="nav-item">
                                <a class="nav-link sign-in-btn" aria-current="page" href="{{ route('login') }}">
                                    <span class="iconify" data-icon="clarity:user-line"></span>
                                    {{ __('Sign In') }}
                                </a>
                            </li>
                            @endauth
                            @endif
                            @if (@$authUser->role == USER_ROLE_ADMIN)
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
                                    <ul class="user-dropdown-item-box">
                                        <li class="nav-item">
                                            <a class="dropdown-item" href="{{ route('admin.dashboard') }}">
                                                <span class="iconify" data-icon="bxs:dashboard"></span>
                                                {{ __('Admin Panel') }}
                                            </a>
                                        </li>
                                    </ul>

                                    <div class="dropdown-footer-btn">
                                        <a href="{{ route('logout') }}" class="btn btn-primary">
                                            <span class="iconify" data-icon="clarity:logout-line"></span>
                                            {{ __('Logout') }}
                                        </a>
                                    </div>
                                    </div>
                            </li>
                            @endif
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        </section>
</div>

@if (isEnableOpenAI() && @auth()->user())
<div class="ai-chat-bot-sidebar custom-scrollbar" id="ai-chat-bot-sidebar">
    <div class="d-flex align-items-center justify-content-between chat-bot-header">
        <h5 class="title">{{ __('AI Content Assistant') }}</h5>
        <button type="button" class="close-btn" id="ai-content-close">
            <span class="iconify" data-icon="carbon:close-filled"></span>
        </button>
    </div>
    <div class="chat-bot-body">
        <div class="chat-bot-all-messages">

            <div class="chat-bot-message chat-bot-message-left">
                <p>{{ __('Hello there! I am AI Chatbot. How can I help you?') }}</p>
            </div>
        </div>

        <div class="chat-bot-input-box">
            <form class="ai-chat-form">
                <textarea class="form-control message-text" placeholder="{{ __('Type your message...') }}"></textarea>
                <button type="submit" class="send-message-btn"><span class="iconify"
                        data-icon="carbon:send-filled"></span></button>
            </form>
        </div>
    </div>
</div>
@endif