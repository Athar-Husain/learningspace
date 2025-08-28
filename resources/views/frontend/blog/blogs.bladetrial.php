@extends('frontend.layouts.app')
@section('meta')
    @php
        $metaData = getMeta('blog');
    @endphp

    <meta name="description" content="{{ __($metaData['meta_description']) }}">
    <meta name="keywords" content="{{ __($metaData['meta_keyword']) }}">

    <meta property="og:type" content="article">
    <meta property="og:title" content="{{ __($metaData['meta_title']) }}">
    <meta property="og:description" content="{{ __($metaData['meta_description']) }}">
    <meta property="og:image" content="{{ __($metaData['og_image']) }}">
    <meta property="og:url" content="{{ url()->current() }}">

    <meta property="og:site_name" content="{{ __(get_option('app_name')) }}">

    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="{{ __($metaData['meta_title']) }}">
    <meta name="twitter:description" content="{{ __($metaData['meta_description']) }}">
    <meta name="twitter:image" content="{{ __($metaData['og_image']) }}">
@endsection

@section('content')

<main>
    {{-- Determine the prominent blog and other blogs from the paginated collection --}}
    @php
        // Get the first item to be the hero blog. If $blogs is empty, $prominentBlog will be null.
        $prominentBlog = $blogs->first();

        // Get the remaining blogs after the first one for the grid section.
        // This is a Collection method, safe even if $blogs has only one item or is empty.
        $otherBlogs = $blogs->skip(1);
    @endphp

    {{-- TOP HERO BLOG SECTION --}}
    <section class="bg-[#00255D] text-white py-12 px-4 relative overflow-hidden">
        @if($prominentBlog)
            {{-- Image covering the full width --}}
            <div class="absolute inset-0 z-0">
                <img src="{{ getImageFile($prominentBlog->image_path) }}" alt="{{ __($prominentBlog->title) }}" class="w-full h-full object-cover opacity-30"> {{-- object-cover and opacity for visual effect --}}
            </div>

            <div class="container mx-auto relative z-10"> {{-- Content layered on top --}}
                <h2 class="text-4xl font-bold mb-6">{{ __('Latest News') }}</h2>
                <div class="flex flex-col md:flex-row items-start md:items-center">
                    {{-- Image is now the background, so we just need the text content --}}
                    <div class="py-6 text-white max-w-2xl"> {{-- Limit width for better readability --}}
                        <p class="text-sm">{{ $prominentBlog->created_at->format('j M Y') }}</p>
                        <h3 class="text-3xl font-bold mt-2 leading-tight"> {{-- Adjusted text size and line height --}}
                            <a href="{{ route('blog-details', $prominentBlog->slug) }}" class="hover:text-yellow-300 transition-colors duration-200">
                                {{ __($prominentBlog->title) }}
                            </a>
                        </h3>
                        <p class="mt-4 text-lg"> {{-- Slightly larger text for main description --}}
                            {!! Str::limit($prominentBlog->details, 280) !!} {{-- Increased limit for prominent blog --}}
                        </p>
                        <a href="{{ route('blog-details', $prominentBlog->slug) }}" class="mt-6 py-3 uppercase text-yellow-500 hover:text-yellow-300 font-semibold flex gap-x-3 items-center transition-colors duration-200">
                            {{ __('View More') }} <img src="{{ asset('frontend/assets/images/icons/chevron-yellow.png') }}" alt="" class="h-4">
                        </a>
                    </div>
                </div>
            </div>
        @else
            <div class="container mx-auto text-center py-20 relative z-10">
                <p class="text-xl">{{ __('No latest blog available to display.') }}</p>
            </div>
        @endif
    </section>
    {{-- END TOP HERO BLOG SECTION --}}

    {{-- NEWS CARDS SECTION (Grid of 6 blogs) --}}
    <section class="blog-page-area section-t-space">
        <div class="container mx-auto px-4 my-20">
            <div class="row">
                {{-- Main content area for grid and pagination --}}
                <div class="col-12 col-md-7 col-lg-8">
                    @if($otherBlogs->count() > 0)
                        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-10">
                            @foreach($otherBlogs->take(6) as $blog) {{-- Display up to 6 other blogs in cards (2 rows x 3 columns) --}}
                                <div class="flex flex-col">
                                    <a href="{{ route('blog-details', $blog->slug) }}">
                                        <img src="{{ getImageFile($blog->image_path) }}" alt="{{ __($blog->title) }}" class="w-full h-auto object-cover aspect-video"> {{-- Added object-cover and aspect-video for consistent image sizing --}}
                                    </a>
                                    <div class="py-6 flex flex-col justify-between h-full">
                                        <div>
                                            <p class="text-sm text-gray-500">{{ $blog->created_at->format('j M, Y') }}</p>
                                            <h3 class="text-xl font-semibold mt-2 leading-snug"> {{-- Adjusted text size --}}
                                                <a href="{{ route('blog-details', $blog->slug) }}" class="hover:text-blue-600 transition-colors duration-200">{{ __($blog->title) }}</a>
                                            </h3>
                                        </div>
                                        <div>
                                            <p class="mt-4 text-gray-600 text-base"> {{-- Base text size --}}
                                                {!! Str::limit($blog->details, 120) !!} {{-- Adjusted limit for cards --}}
                                            </p>
                                            <a href="{{ route('blog-details', $blog->slug) }}" class="mt-6 py-3 uppercase text-red-500 hover:text-red-700 font-semibold flex gap-x-3 items-center transition-colors duration-200">
                                                {{ __('View More') }} <img src="{{ asset('frontend/assets/images/icons/chevron-red.png') }}" alt="" class="h-4">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    @else
                        <div class="no-course-found text-center py-10">
                            <img src="{{ asset('frontend/assets/img/empty-data-img.png') }}" alt="img" class="img-fluid mx-auto" style="max-width: 200px;"> {{-- Added mx-auto for centering image --}}
                            <h5 class="mt-3 text-xl font-semibold">{{ __('No other blogs to display on this page.') }}</h5>
                        </div>
                    @endif

                    {{-- Pagination for the overall blogs collection --}}
                    <div class="col-12 mt-10">
                        @if($blogs->hasPages())
                            {{ $blogs->links('frontend.paginate.paginate') }}
                        @endif
                    </div>
                </div>

                {{-- Right Sidebar (Kept exactly as is) --}}
                <div class="col-12 col-md-5 col-lg-4">
                    <div class="blog-page-right-content bg-white">
                        <div class="blog-sidebar-box">
                            <form class="blog-sidebar-search-box position-relative">
                                <div class="input-group">
                                    <input class="form-control border-0 searchBlog" type="search" placeholder="{{ __('Search...') }}">
                                    <button class="bg-transparent border-0"><span class="iconify" data-icon="akar-icons:search"></span></button>
                                </div>
                                <div class="search-bar-suggestion-box searchBlogBox d-none custom-scrollbar">
                                    <ul class="appendBlogSearchList"></ul>
                                </div>
                            </form>
                        </div>
                        <div class="blog-sidebar-box">
                            <h6 class="blog-sidebar-box-title">{{ __('Recent Blogs') }}</h6>
                            <ul class="popular-posts">
                                @foreach($recentBlogs as $recentBlog)
                                    <li>
                                        <div class="sidebar-blog-item d-flex">
                                            <div class="flex-shrink-0">
                                                <div class="sidebar-blog-item-img-wrap overflow-hidden">
                                                    <a href="{{ route('blog-details', $recentBlog->slug) }}"><img src="{{ getImageFile($recentBlog->image_path) }}" alt="img" class="img-fluid"></a>
                                                </div>
                                            </div>
                                            <div class="flex-grow-1 {{selectedLanguage()->rtl == 1 ? 'me-3' : 'ms-3' }}">
                                                <h6 class="sidebar-blog-item-title"><a href="{{ route('blog-details', $recentBlog->slug) }}">{{ __(@$recentBlog->title) }}</a></h6>
                                                <p class="blog-author-name-publish-date font-12 font-medium color-gray mb-0">{{ @$recentBlog->created_at->format('j M, Y') }}</p>
                                            </div>
                                        </div>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                        <div class="blog-sidebar-box">
                            <h6 class="blog-sidebar-box-title">{{ __('Categories') }}</h6>
                            <ul class="blog-sidebar-categories">
                                @foreach($blogCategories as $blogCategory)
                                    <li><a href="{{ route('categoryBlogs', $blogCategory->slug) }}" class="font-15">{{ __($blogCategory->name) }} ({{ $blogCategory->active_blogs_count }})</a></li>
                                @endforeach
                            </ul>
                        </div>
                        <div class="blog-sidebar-box">
                            <h6 class="blog-sidebar-box-title">{{ __('Tags') }}</h6>
                            <ul class="blog-sidebar-tags">
                                @foreach($tags as $tag)
                                    {{-- Keeping it without a route as per last instruction to avoid "Route [tagBlogs] not defined" --}}
                                    <li><a>{{ $tag->name }}</a></li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>

<input type="hidden" class="searchBlogRoute" value="{{ route('search-blog.list') }}">

@endsection

@push('script')
    <script src="{{ asset('frontend/assets/js/custom/search-blog-list.js') }}"></script>
    @endpush