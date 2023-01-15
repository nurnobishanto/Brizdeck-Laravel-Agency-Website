@extends('layouts.website')

@section('content')
    <!-- Start Page Banner Area -->
    <div class="page-banner-area">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-6 col-md-6">
                    <div class="page-banner-content" data-aos="fade-right" data-aos-delay="50" data-aos-duration="500"
                        data-aos-once="true">
                        <h2>{{ $tr->translate('Our Blog Posts') }}</h2>

                        <ul>
                            <li>
                                <a href="{{ Route('website') }}">Home</a>
                            </li>
                            <li>Blog</li>
                        </ul>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6">
                    <div class="page-banner-image" data-speed="0.08" data-revert="true">
                        <img src="{{ asset('website') }}/assets/images/page-banner-image.png" alt="Oleev"
                            data-aos="fade-left" data-aos-delay="50" data-aos-duration="500" data-aos-once="true">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Page Banner Area -->
  
      <!--Start Blog Area -->
    <div class="blog-area ptb-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-12">
                    <div class="row justify-content-center">
                        @foreach ($allposts as $post)
                            <div class="col-lg-6 col-md-6">
                                <div class="single-blog-card">
                                    <div class="blog-image">

                                        @if (Voyager::image($post->image))
                                            <a href="{{ Route('website.post', ['slug' => $post->slug]) }}"><img
                                                    src="{{ Voyager::image($post->thumbnail('medium')) }}"
                                                    alt="{{ $post->title }}"></a>
                                        @else
                                            <a href="{{ Route('website.post', ['slug' => $post->slug]) }}"><img
                                                    src="{{ asset('website') }}/assets/images/blog/blog.jpg"
                                                    alt="{{ $post->title }}"></a>
                                        @endif


                                    </div>
                                    <div class="blog-content with-padding">
                                        @if ($post->user)
                                            <span>By <a
                                                    href="{{ route('website.author', ['slug' => $post->user->slug]) }}">{{ $tr->translate($post->user->name) }}</a></span>
                                        @else
                                        @endif

                                        <h3>
                                            <a
                                                href="{{ Route('website.post', ['slug' => $post->slug]) }}">{{ $tr->translate($post->title) }}</a>
                                        </h3>
                                        @if (strlen($post->excerpt) != 0)
                                            <p>{{ Str::limit($tr->translate($post->excerpt), 100, ' ...') }}</p>
                                        @else
                                            <p>{{ Str::limit(strip_tags($tr->translate($post->body)), 100, ' ...') }}
                                            </p>
                                        @endif



                                        <ul class="entry-meta">
                                            <li><i class="ri-calendar-line"></i>
                                                {{ $tr->translate($post->created_at->format('M d, Y')) }}</li>
                                            @if ($post->category)
                                                <li><i class="ri-price-tag-3-line"></i> <a
                                                        href="{{ Route('website.category', ['slug' => $post->category->slug]) }}">{{ $tr->translate($post->category->name) }}</a>
                                                </li>
                                            @endif
                                            <li>
                                                <i class="ri-eye-line"></i>
                                                @if ($post->view_count < 1000)
                                                    {{ $post->view_count }}
                                                @else
                                                    @php
                                                        $count = $post->view_count / 1000;
                                                    @endphp
                                                    @if ($count < 100)
                                                        {{ round($count, 2) }}K
                                                    @else
                                                        @php
                                                            $countm = $count / 1000;
                                                        @endphp
                                                        {{ round($countm, 2) }}M
                                                    @endif
                                                @endif

                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        @endforeach

                    </div>

                    {{ $allposts->links('vendor.pagination.custom') }}

                </div>

                <!-- Sidebar -->
                @include('include.sidebar')
            </div>
        </div>
    </div>
     <!--End Blog Area -->
@endsection