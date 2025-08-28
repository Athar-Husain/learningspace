@extends('frontend.layouts.app')

@section('content')

@push('head')
    <script src="https://cdn.tailwindcss.com"></script>
    {{-- Consider replacing CDN with local compilation for production: @vite('resources/css/app.css') --}}
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Almarai:wght@700&amp;family=Inter&amp;display=swap" rel="stylesheet" />
    <style>
        /* This should ideally be in your main CSS file that Tailwind processes */
        body {
            font-family: "bahij", sans-serif;
        }
    </style>
@endpush

{{-- Hero Section (from your new HTML) --}}
<section class="relative mx-auto">
    <img
        alt="رجل يرتدي شماغ أحمر وأبيض يقف في صف دراسي والطلاب يجلسون ويستمعون"
        class="w-full object-cover h-[80vh]"
        height="80vh"
        src="{{ asset('assets/heroimg.png') }}" {{-- Update path if needed --}}
        width="1280"
    />
    <div
        class="absolute top-0 left-0 w-full h-full bg-gradient-to-l from-white/90 to-white/10 flex flex-col justify-center px-6 md:px-20 lg:px-32"
    >
        <h1
            class="text-4xl md:text-5xl font-extrabold text-gray-900 max-w-xl leading-tight"
        >
            طوّر مهاراتك.
            <br />
            طوّر مستقبلك.
        </h1>
        <p
            class="mt-4 max-w-lg text-gray-700 text-base md:text-lg leading-relaxed"
        >
            نحن نساعدك على اكتساب المهارات التي تحتاجها لتطوير مستقبلك المهني.
            انضم إلى دوراتنا التدريبية المتخصصة.
        </p>
        <button
            class="mt-6 bg-yellow-400 max-w-xs text-gray-900 font-semibold px-6 py-3 rounded shadow hover:bg-yellow-500 transition"
        >
            استكشاف دورات التدريب
        </button>
    </div>
</section>

{{-- Bridge Gap Section (from your new HTML) --}}
<section
    class="max-w-[1280px] mx-auto px-6 md:px-20 lg:px-32 py-20 flex flex-col md:flex-row items-center justify-between relative"
>
    <div class="hidden md:block md:w-1/2">
        <img
            alt="تصميم خطوط برمجية برتقالية متداخلة على خلفية بيضاء"
            class="w-full max-w-[200px] absolute top-0 right-[-80]"
            src="{{ asset('assets/yellowoutline.svg') }}" {{-- Update path if needed --}}
        />
    </div>
    <div class="md:w-1/2">
        <h2 class="text-3xl font-extrabold text-gray-900 mb-4">
            لسد الفجوة في السوق الرقمية
        </h2>
        <p class="text-gray-700 mb-6 leading-relaxed max-w-lg">
            نحن نعمل على توفير المهارات الرقمية التي يحتاجها السوق من خلال برامج
            تدريبية متخصصة تواكب أحدث التطورات التقنية.
        </p>
        <button
            class="bg-yellow-400 text-gray-900 font-semibold px-6 py-3 rounded shadow hover:bg-yellow-500 transition"
        >
            تعرف على المزيد
        </button>
    </div>
</section>

{{-- Leading Institutions Section (from your new HTML, adapted for Blade loop if applicable) --}}
<section class="mx-auto px-6 md:px-20 lg:px-32 py-10">
    <div class="flex justify-center items-center gap-2 m-8">
        <span class="text-yellow-400 font-bold text-lg"> • </span>
        <p class="text-xs">يثقون بنا</p>
        <span class="text-yellow-400 font-bold text-lg"> • </span>
    </div>

    <div
        class="flex items-center justify-center space-x-2 space-x-reverse mb-8"
    >
        <span class="text-yellow-400 font-bold text-lg"> • </span>
        <h3 class="text-4xl font-extrabold text-gray-900">مؤسسات رائدة</h3>
        <span class="text-yellow-400 font-bold text-lg"> • </span>
    </div>
    <div
        class="grid grid-cols-2 sm:grid-cols-4 md:grid-cols-6 gap-6 items-center border-t border-b border-gray-200 py-8"
    >
        @for($i = 1; $i <= 13; $i++) {{-- Adjust loop based on your entities --}}
            @php
                $entityImage = "assets/entities/" . ($i == 7 ? 8 : ($i == 8 ? 9 : ($i == 9 ? 10 : ($i == 10 ? 11 : ($i == 11 ? 12 : ($i == 12 ? 13 : $i)))))). ".svg";
                // This complex mapping is to match the provided HTML's irregular naming (7->8, 8->9, etc.)
                // Ideally, your backend would provide an array of entity images.
            @endphp
            <div
                class="px-6 py-8 bg-white rounded shadow-md flex justify-center items-center"
            >
                <img
                    alt="شعار مؤسسة رقم {{ $i }} ملون"
                    class="mx-auto max-h-10 object-contain"
                    height="40"
                    src="{{ asset($entityImage) }}"
                    width="120"
                />
            </div>
        @endfor
    </div>
    <div class="flex justify-center mt-6">
        <button
            class="flex justify-center items-center bg-yellow-400 text-gray-900 font-semibold px-6 py-3 rounded shadow hover:bg-yellow-500 transition"
        >
            عرض المزيد
            <span class="px-2"> <i class="fa-solid fa-angle-left"></i></span>
        </button>
    </div>
</section>

{{-- Why Choose Section (from your new HTML) --}}
<section class="mx-auto px-8 md:px-20 lg:px-32 py-16 mb-10">
    <h3 class="text-3xl font-extrabold text-gray-900 mb-10 text-center">
        لماذا تختار مكان التعلم؟
    </h3>

    <div
        class="grid grid-cols-1 md:grid-cols-3 gap-10 text-gray-700 text-base leading-relaxed"
    >
        <div class="flex flex-col items-center text-center space-y-3">
            <h4 class="font-semibold text-lg flex items-center">
                <span class="mx-2 px-2"
                    ><img
                        src="{{ asset('assets/entities/whychoose1.svg') }}"
                        class="h-[20px]"
                        alt="Learning"
                        srcset="" /></span
                >دورات متوافقة مع السوق
            </h4>
            <p class="text-sm mt-10">
                نقدم دورات تدريبية مصممة لتلبية احتياجات سوق العمل الحالية
                والمستقبلية.
            </p>
        </div>
        <div class="flex flex-col items-center text-center space-y-3">
            <h4 class="font-semibold text-lg flex items-center">
                <span class="mx-2 px-2"
                    ><img
                        src="{{ asset('assets/entities/whychoose2.svg') }}"
                        alt="Learning"
                        class="h-[30px]"
                        srcset="" /></span
                >مدربون خبراء
            </h4>
            <p class="text-sm mt-10">
                يتم تقديم الدورات من قبل مدربين ذوي خبرة عالية في مجالاتهم.
            </p>
        </div>
        <div class="flex flex-col items-center text-center space-y-3">
            <h4 class="font-semibold text-lg flex">
                <span class="mx-2 px-2"
                    ><img
                        src="{{ asset('assets/entities/whychoose3.svg') }}"
                        class="h-[30px]"
                        alt="Learning"
                        srcset="" /></span
                >مناهج مرنة
            </h4>
            <p class="text-sm mt-10">
                نوفر مناهج تعليمية مرنة تناسب جميع المستويات والجدول الزمني
                للمتعلمين.
            </p>
        </div>
    </div>
</section>


@if(@$home->subscription_show && get_option('subscription_mode'))
    <section class="py-5 bg-gray-100 text-center"> {{-- Replaced bg-light with bg-gray-100 --}}
        <div class="max-w-[1280px] mx-auto px-4 sm:px-6 lg:px-8"> {{-- Replaced container with max-w & padding --}}
            <h2 class="mb-3 text-2xl md:text-3xl font-extrabold text-gray-900">{{ __('Subscribe to Our Plans') }}</h2>
            {{-- Assuming 'subscription-home-list' partial is already Tailwind-ready or needs conversion --}}
            @include('frontend.home.partial.subscription-home-list')
        </div>
    </section>
@endif

@if($home->instructor_area)
    <section class="py-5 bg-white">
        <div class="max-w-[1280px] mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex flex-col md:flex-row justify-between items-center mb-4 space-x-reverse space-x-4 md:space-x-0"> {{-- Adjusted for flex and RTL --}}
                <div class="text-center md:text-right"> {{-- Adjusted text alignment for RTL --}}
                    <h3 class="text-3xl font-extrabold text-gray-900 mb-2">{{ __(get_option('top_instructor_title')) }}</h3>
                    <p class="text-gray-700">{{ __(get_option('top_instructor_subtitle')) }}</p>
                </div>
                <a href="{{ route('instructor') }}" class="mt-4 md:mt-0 bg-yellow-400 text-gray-900 font-semibold px-6 py-3 rounded shadow hover:bg-yellow-500 transition"> {{-- Converted button styling --}}
                    {{ __('View All Instructors') }}
                </a>
            </div>
            <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6"> {{-- Converted row to grid --}}
                @foreach($instructors->take(4) as $instructorUser)
                    <div class="mb-4"> {{-- Removed col-md-3, Tailwind grid handles column width --}}
                        <x-frontend.instructor :user="$instructorUser" :type=INSTRUCTOR_CARD_TYPE_ONE />
                    </div>
                @endforeach
            </div>
        </div>
    </section>
@endif

@if($home->video_area)
    <section class="py-5 bg-gray-100"> {{-- Replaced bg-light with bg-gray-100 --}}
        <div class="max-w-[1280px] mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex flex-col md:flex-row items-center space-x-reverse space-x-8 md:space-x-0"> {{-- Adjusted for flex and RTL --}}
                <div class="w-full md:w-7/12 mb-6 md:mb-0"> {{-- Converted col-md-7 to Tailwind width classes --}}
                    <div class="relative">
                        <img src="{{ getImageFile(get_option('become_instructor_video_preview_image')) }}" class="w-full rounded" alt="video preview"> {{-- Converted img-fluid to w-full --}}
                        <button type="button" class="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 bg-white p-4 rounded-full shadow-lg hover:scale-105 transition-transform" {{-- Converted position-absolute, top-50, start-50, translate-middle --}}
                                data-bs-toggle="modal" data-bs-target="#newVideoPlayerModal">
                            <img src="{{ asset('frontend/assets/img/icons-svg/play.svg') }}" alt="Play" class="w-8 h-8"> {{-- Added width/height for play button icon --}}
                        </button>
                    </div>
                </div>
                <div class="w-full md:w-5/12 text-center md:text-right"> {{-- Converted col-md-5 to Tailwind width classes --}}
                    <h3 class="text-3xl font-extrabold text-gray-900 mb-2">{{ __(get_option('become_instructor_video_title')) }}</h3>
                    <p class="text-gray-700 mb-4">{{ __(get_option('become_instructor_video_subtitle')) }}</p>
                    <a href="{{ route('student.become-an-instructor') }}" class="bg-yellow-400 text-gray-900 font-semibold px-6 py-3 rounded shadow hover:bg-yellow-500 transition"> {{-- Converted button styling --}}
                        {{ __('Become an Instructor') }}
                    </a>
                </div>
            </div>
        </div>
    </section>
@endif

<section
    class="bg-[#414141] text-gray-100 py-20 relative overflow-hidden"
>
    <div class="max-w-[1280px] mx-auto px-6 md:px-20 lg:px-32">
        <div
            class="flex flex-col md:flex-row justify-between items-start md:items-center mb-16 space-x-reverse md:space-x-0"
        >
            <div class="text-center md:text-right">
                <h2 class="text-4xl font-extrabold leading-tight mb-2">
                    طوّر مهاراتك.
                    <br />
                    اختر تخصصك.
                </h2>
                <p class="text-gray-400 max-w-md leading-relaxed mx-auto md:mx-0">
                    نقدم لك أفضل الدورات التدريبية المتخصصة التي تساعدك على بناء
                    مستقبل مهني ناجح.
                </p>
            </div>
            <div class="mt-8 md:mt-0 flex flex-col space-y-4 text-right">
                <div class="flex items-end justify-end">
                    <span class="text-white font-extrabold text-3xl"> {{-- Changed text-white-400 to text-white --}}
                        50,000+
                    </span>
                    <span class="text-gray-400 text-sm block mr-2"> متدرب </span> {{-- Added mr-2 for spacing in RTL --}}
                </div>
                <div class="flex items-end justify-end">
                    <span class="text-white font-extrabold text-3xl"> {{-- Changed text-white-400 to text-white --}}
                        1,200+
                    </span>
                    <span class="text-gray-400 text-xs block mr-2"> دورة تدريبية </span> {{-- Added mr-2 for spacing in RTL --}}
                </div>
                <div class="flex items-end justify-end">
                    <span class="text-white font-extrabold text-3xl"> {{-- Changed text-white-400 to text-white --}}
                        300+
                    </span>
                    <span class="text-gray-400 text-sm block mr-2"> شريك </span> {{-- Added mr-2 for spacing in RTL --}}
                </div>
            </div>
        </div>

        <div
            class="grid grid-cols-1 md:grid-cols-3 gap-6 text-sm"
        >
            <div
                class="border-[1px] border-white p-6 flex flex-col items-start text-right space-y-4"
            >
                <div class="text-yellow-400 text-2xl">
                    <i class="fas fa-shield-alt"></i>
                </div>
                <h5 class="font-semibold text-white">الأمن السيبراني</h5>
                <ul class="text-gray-400 list-disc list-inside space-y-1 pr-4"> {{-- Added pr-4 for RTL list-disc --}}
                    <li>حماية البيانات</li>
                    <li>أمن الشبكات</li>
                    <li>إدارة المخاطر</li>
                </ul>
                <a class="text-yellow-400 hover:underline mt-auto" href="#"
                    >المزيد</a
                >
            </div>

            <div
                class="border-[1px] border-white p-6 flex flex-col items-start text-right space-y-4"
            >
                <div class="text-yellow-400 text-2xl">
                    <i class="fas fa-robot"></i>
                </div>
                <h5 class="font-semibold text-white">
                    البيانات الضخمة والذكاء الاصطناعي
                </h5>
                <ul class="text-gray-400 list-disc list-inside space-y-1 pr-4"> {{-- Added pr-4 for RTL list-disc --}}
                    <li>تحليل البيانات</li>
                    <li>تعلم الآلة</li>
                    <li>التعلم العميق</li>
                </ul>
                <a class="text-yellow-400 hover:underline mt-auto" href="#"
                    >المزيد</a
                >
            </div>

            <div
                class="border-[1px] border-white p-6 flex flex-col items-start text-right space-y-4"
            >
                <div class="text-yellow-400 text-2xl">
                    <i class="fas fa-cogs"></i>
                </div>
                <h5 class="font-semibold text-white">تطوير البرمجيات</h5>
                <ul class="text-gray-400 list-disc list-inside space-y-1 pr-4"> {{-- Added pr-4 for RTL list-disc --}}
                    <li>برمجة التطبيقات</li>
                    <li>تصميم الواجهات</li>
                    <li>اختبار البرمجيات</li>
                </ul>
                <a class="text-yellow-400 hover:underline mt-auto" href="#"
                    >المزيد</a
                >
            </div>

            <div
                class="border-[1px] border-white p-6 flex flex-col items-start text-right space-y-4"
            >
                <div class="text-yellow-400 text-2xl">
                    <i class="fas fa-tools"></i>
                </div>
                <h5 class="font-semibold text-white">الدعم الفني والصيانات</h5>
                <ul class="text-gray-400 list-disc list-inside space-y-1 pr-4"> {{-- Added pr-4 for RTL list-disc --}}
                    <li>صيانة الأجهزة</li>
                    <li>دعم المستخدمين</li>
                    <li>إدارة الأنظمة</li>
                </ul>
                <a class="text-yellow-400 hover:underline mt-auto" href="#"
                    >المزيد</a
                >
            </div>

            <div
                class="border-[1px] border-white p-6 flex flex-col items-start text-right space-y-4"
            >
                <div class="text-yellow-400 text-2xl">
                    <i class="fas fa-shopping-cart"></i>
                </div>
                <h5 class="font-semibold text-white">
                    التجارة الإلكترونية والتسويق الرقمي
                </h5>
                <ul class="text-gray-400 list-disc list-inside space-y-1 pr-4"> {{-- Added pr-4 for RTL list-disc --}}
                    <li>التسويق عبر الإنترنت</li>
                    <li>إدارة المتاجر الإلكترونية</li>
                    <li>تحليل السوق</li>
                </ul>
                <a class="text-yellow-400 hover:underline mt-auto" href="#"
                    >المزيد</a
                >
            </div>

            <div
                class="border-[1px] border-white p-6 flex flex-col items-start text-right space-y-4"
            >
                <div class="text-yellow-400 text-2xl">
                    <i class="fas fa-ladder"></i>
                </div>
                <h5 class="font-semibold text-white">البنية التحتية</h5>
                <ul class="text-gray-400 list-disc list-inside space-y-1 pr-4"> {{-- Added pr-4 for RTL list-disc --}}
                    <li>الشبكات</li>
                    <li>الخوادم</li>
                    <li>الحوسبة السحابية</li>
                </ul>
                <a class="text-yellow-400 hover:underline mt-auto" href="#"
                    >المزيد</a
                >
            </div>
        </div>

        <div class="flex justify-center mt-12">
            <button
                class="flex justify-center items-center bg-yellow-400 text-gray-900 font-semibold px-6 py-3 rounded shadow hover:bg-yellow-500 transition"
            >
                عرض المزيد
                <span class="px-2"> <i class="fa-solid fa-angle-left"></i></span>
            </button>
        </div>
        <div class="hidden md:block absolute top-10 right-10 space-y-2"> {{-- Adjusted for RTL --}}
            <div class="w-10 h-10 border border-yellow-400"></div>
            <div class="w-8 h-8 border border-yellow-400"></div>
            <div class="w-6 h-6 border border-yellow-400"></div>
        </div>
        <div class="hidden md:block absolute bottom-10 left-10 space-y-2"> {{-- Adjusted for RTL --}}
            <div class="w-10 h-10 border border-yellow-400"></div>
            <div class="w-8 h-8 border border-yellow-400"></div>
            <div class="w-6 h-6 border border-yellow-400"></div>
        </div>
    </div>
</section>


@if(@$home->saas_show && get_option('saas_mode'))
    <section class="py-5 bg-white">
        <div class="max-w-[1280px] mx-auto px-4 sm:px-6 lg:px-8">
            {{-- Assuming 'saas-home-list' partial is already Tailwind-ready or needs conversion --}}
            @include('frontend.home.partial.saas-home-list')
        </div>
    </section>
@endif

@if($home->customer_says_area)
    <section class="py-5 bg-yellow-400 text-white"> {{-- Converted bg-primary to bg-yellow-400 based on your example --}}
        <div class="max-w-[1280px] mx-auto px-4 sm:px-6 lg:px-8">
            <h3 class="text-center mb-5 text-3xl font-extrabold">{{ __(get_option('customer_say_title')) }}</h3>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-6"> {{-- Converted row to grid --}}
                {{-- Assuming 'customer-say-cards' partial is already Tailwind-ready or needs conversion --}}
                @include('frontend.home.partial.customer-say-cards')
            </div>
        </div>
    </section>
@endif

@if($home->achievement_area)
    <section class="py-5 bg-gray-100"> {{-- Replaced bg-light with bg-gray-100 --}}
        <div class="max-w-[1280px] mx-auto px-4 sm:px-6 lg:px-8">
            <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6 text-center"> {{-- Converted row to grid --}}
                @for($i = 1; $i <= 4; $i++)
                    <div class="mb-4"> {{-- Removed col-md-3 --}}
                        <img src="{{ getImageFile(get_option('achievement_'.$i.'_logo')) }}" class="mx-auto mb-3 h-20 object-contain" alt="Achievement"> {{-- Added mx-auto for centering, height --}}
                        <h5 class="text-xl font-semibold text-gray-900">{{ get_option('achievement_'.$i.'_title') }}</h5>
                        <p class="text-gray-700">{{ get_option('achievement_'.$i.'_subtitle') }}</p>
                    </div>
                @endfor
            </div>
        </div>
    </section>
@endif

@if($home->faq_area)
    <section class="py-5">
        <div class="max-w-[1280px] mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex flex-col md:flex-row items-center space-x-reverse space-x-8 md:space-x-0"> {{-- Adjusted for flex and RTL --}}
                <div class="w-full md:w-1/2 text-center md:text-right mb-8 md:mb-0"> {{-- Converted col-md-6 to Tailwind width classes --}}
                    <h3 class="text-3xl font-extrabold text-gray-900 mb-2">{{ __(get_option('faq_title')) }}</h3>
                    <p class="text-gray-700 mb-6">{{ __(get_option('faq_subtitle')) }}</p>
                    <div class="accordion" id="faqAccordion">
                        @foreach($faqQuestions as $key => $faqQuestion)
                            <div class="border border-gray-200 rounded mb-2"> {{-- Simplified accordion-item styling --}}
                                <h2 class="text-lg font-semibold text-gray-800" id="heading{{ $key }}">
                                    <button class="flex items-center justify-between w-full p-4 text-right collapsed focus:outline-none {{ $key !== 0 ? 'border-b border-gray-200' : '' }}" type="button"
                                            data-bs-toggle="collapse" data-bs-target="#collapse{{ $key }}" aria-expanded="{{ $key === 0 ? 'true' : 'false' }}" aria-controls="collapse{{ $key }}">
                                        {{ $faqQuestion->question }}
                                        <span class="fa-solid fa-chevron-down text-sm transition-transform duration-300 transform {{ $key === 0 ? 'rotate-180' : '' }}"></span>
                                    </button>
                                </h2>
                                <div id="collapse{{ $key }}" class="collapse {{ $key === 0 ? 'show' : '' }}" aria-labelledby="heading{{ $key }}" data-bs-parent="#faqAccordion">
                                    <div class="p-4 text-gray-600">
                                        {{ $faqQuestion->answer }}
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                <div class="w-full md:w-1/2"> {{-- Converted col-md-6 to Tailwind width classes --}}
                    <img src="{{ getImageFile(get_option('faq_image')) }}" alt="FAQ" class="w-full rounded shadow"> {{-- Converted img-fluid to w-full, added shadow --}}
                    <div class="mt-3 bg-white p-6 shadow-md rounded"> {{-- Converted p-3 to p-6, shadow-sm to shadow-md --}}
                        <h5 class="text-xl font-semibold text-gray-900 mb-2">{{ get_option('faq_image_title') }}</h5>
                        <p class="text-gray-700">{{ __('Then feel free to') }} <a href="{{ route('contact') }}" class="text-yellow-400 hover:underline">{{ __('Contact With Us') }}</a></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endif

@if($home->instructor_support_area)
    <section class="py-5 bg-gray-100"> {{-- Replaced bg-light with bg-gray-100 --}}
        <div class="max-w-[1280px] mx-auto px-4 sm:px-6 lg:px-8 text-center">
            <h3 class="text-3xl font-extrabold text-gray-900 mb-2">{{ @$aboutUsGeneral->instructor_support_title }}</h3>
            <p class="text-gray-700 mb-8">{{ @$aboutUsGeneral->instructor_support_subtitle }}</p>
            <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6"> {{-- Converted row to grid --}}
                @foreach($instructorSupports as $support)
                    <div class="mb-4"> {{-- Removed col-md-4 --}}
                        <div class="bg-white p-6 rounded-lg shadow-md h-full flex flex-col justify-between"> {{-- Converted card p-3, added h-full, flexbox --}}
                            <img src="{{ getImageFile($support->image_path) }}" class="mx-auto mb-3 h-16 object-contain" alt="support"> {{-- Added mx-auto for centering, height --}}
                            <h5 class="text-xl font-semibold text-gray-900 mb-2">{{ $support->title }}</h5>
                            <p class="text-gray-700 mb-4">{{ $support->subtitle }}</p>
                            <a href="{{ $support->button_link }}" class="bg-white border border-yellow-400 text-yellow-400 font-semibold px-6 py-3 rounded shadow hover:bg-yellow-500 hover:text-gray-900 transition mt-auto"> {{-- Converted btn-outline-primary --}}
                                {{ $support->button_name }}
                            </a>
                        </div>
                    </div>
                @endforeach
            </div>

            <section
                class="mx-auto px-6 md:px-20 lg:px-32 py-10 space-x-reverse space-x-6" {{-- RTL spacing --}}
            >
                <div class="flex justify-center items-center gap-2 m-8">
                    <span class="text-yellow-400 font-bold text-lg"> • </span>
                    <p class="text-xs">شركاؤنا</p>
                    <span class="text-yellow-400 font-bold text-lg"> • </span>
                </div>

                <div class="flex justify-center flex-wrap gap-10"> {{-- Added flex-wrap for responsiveness --}}
                    @foreach($clients as $client)
                        <div class="w-1/2 sm:w-1/3 md:w-1/6 mb-3 flex justify-center items-center"> {{-- Added responsive widths --}}
                            <img
                                src="{{ getImageFile($client->image_path) }}"
                                class="h-12 md:h-16 object-contain" {{-- Adjusted heights for consistency --}}
                                alt="{{ $client->name }}"
                                loading="lazy"
                            />
                        </div>
                    @endforeach
                </div>
            </section>
        </div>
    </section>
@endif

<section class="mx-auto px-6 md:px-20 lg:px-32 py-20">
    <div
        class="grid grid-cols-1 md:grid-cols-2 items-center gap-12 bg-gray-100 p-8 rounded-lg shadow"
    >
        <div class="order-last md:order-first"> {{-- Swapped order for RTL layout, image on right for LTR --}}
            <img
                alt="اجتماع عمل في مكتب مع رجال يرتدون شماغ يناقشون عرض تقديمي على لوحة بيضاء"
                class="w-full rounded"
                src="{{ asset('assets/home3.png') }}" {{-- Update path if needed --}}
                width="600"
            />
        </div>

        <div class="text-right">
            <h2 class="text-3xl font-extrabold text-gray-900 mb-4">
                تعزيز أداء شركتك
            </h2>
            <p class="text-gray-700 mb-6 leading-relaxed max-w-lg mr-auto md:mr-0"> {{-- Adjusted margin for text alignment --}}
                أطلق العنان للإمكانات الكاملة للقوى العاملة لديك من خلال حلول
                التعلم المصممة بعناية. من تطوير القيادة إلى المهارات التقنية
                المتخصصة ، تم تصميم برامجنا لمواجهة التحديات الفريدة لشركتك.
            </p>
            <button
                class="bg-yellow-400 text-gray-900 font-semibold px-6 py-3 rounded shadow hover:bg-yellow-500 transition"
            >
                تواصل معنا
                <span class="px-2"> <i class="fa-solid fa-angle-left"></i></span>
            </button>
        </div>
    </div>
</section>

<section class="mx-auto px-6 md:px-20 lg:px-32 py-20 text-center">
    <div
        class="bg-gray-200 bg-cover bg-center bg-no-repeat p-20 rounded-lg"
        style="background-image: url('{{ asset('assets/bgblocks.jpg') }}')" {{-- Dynamically set background image --}}
    >
        <h3 class="text-3xl font-extrabold text-black mb-4">
            خطوتك القادمة تبدأ من هنا
        </h3>
        <p class="text-black mb-8 max-w-md mx-auto"> {{-- Changed text-black-100 to text-black --}}
            انضم إلى شبكة المتعلمين مع مكان التعلم وابدأ رحلتك المهنية اليوم.
        </p>
        <button
            class="bg-yellow-400 text-gray-900 font-semibold px-6 py-3 rounded shadow hover:bg-yellow-500 transition cursor-pointer"
        >
            انضم معنا
            <span class="px-2"> <i class="fa-solid fa-angle-left"></i></span>
        </button>
    </div>
</section>


<div class="modal fade" id="newVideoPlayerModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <div class="modal-header border-0">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body p-0">
                <video id="player" playsinline controls controlsList="nodownload" class="w-full" poster="{{ getImageFile(get_option('become_instructor_video_preview_image')) }}"> {{-- Converted style="width: 100%;" to class="w-full" --}}
                    <source src="{{ getVideoFile(get_option('become_instructor_video')) }}" type="video/mp4">
                </video>
            </div>
        </div>
    </div>
</div>

@endsection

@push('script')
    {{-- You will need to ensure Bootstrap's JS is still loaded if you use `data-bs-toggle="modal"` or similar --}}
    {{-- OR, transition to a Tailwind-compatible modal solution, often requiring Alpine.js or custom JS. --}}
    {{-- For `btn-close` and `data-bs-dismiss="modal"`, Bootstrap JS is implied. --}}

    {{-- Plyr.js is still used here --}}
    <script src="{{ asset('frontend/assets/vendor/video-player/plyr.js') }}"></script>
    <script>
        const player = new Plyr('#player');
    </script>

    {{-- Script for FAQ accordion icon rotation --}}
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const accordionButtons = document.querySelectorAll('#faqAccordion .accordion-button');
            accordionButtons.forEach(button => {
                button.addEventListener('click', function () {
                    const icon = this.querySelector('.fa-chevron-down');
                    if (icon) {
                        icon.classList.toggle('rotate-180');
                    }
                    // Collapse others manually if needed or rely on Bootstrap's collapse behavior
                    accordionButtons.forEach(otherButton => {
                        if (otherButton !== this) {
                            const otherIcon = otherButton.querySelector('.fa-chevron-down');
                            if (otherIcon && otherIcon.classList.contains('rotate-180')) {
                                otherIcon.classList.remove('rotate-180');
                            }
                        }
                    });
                });
            });
        });
    </script>
@endpush