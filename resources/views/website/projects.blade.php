@extends('layouts.website')
@section('content')
    <!-- Start Page Banner Area -->
    <div class="page-banner-area">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-6 col-md-6">
                    <div class="page-banner-content" data-aos="fade-right" data-aos-delay="50" data-aos-duration="500"
                        data-aos-once="true">
                        <h2>{{ $tr->translate($portfolio_section->title) }}</h2>

                        <ul>
                            <li>
                                <a href="{{ route('website') }}">Home</a>
                            </li>
                            <li>{{ $portfolio_section->title }}</li>
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

    <!-- Start Case Study Area -->
    <div class="case-study-area-without-color pt-100 pb-100">
        <div class="container">
            <div class="section-title">
                <span>{{ $tr->translate($portfolio_section->title) }}</span>
                <h2>{{ $tr->translate($portfolio_section->heading) }}</h2>
                <p>{{ $tr->translate($portfolio_section->description) }}</p>
            </div>

            <div class="row justify-content-center">
                @foreach ($projects as $project)
                    <div class="col-lg-6 col-md-6">
                        <div class="single-case-study-card">
                            <a href="{{ Route('website.project', ['slug' => $project->slug]) }}">
                                <img src="{{ Voyager::image($project->thumbnail) }}" alt="{{ $project->title }}"></a>

                            <div class="case-study-content">
                                <h3>
                                    <a
                                        href="{{ Route('website.project', ['slug' => $project->slug]) }}">{{ $tr->translate($project->title) }}</a>
                                </h3>
                                <a href="{{ Route('website.project', ['slug' => $project->slug]) }}"
                                    class="case-btn"><i class="ri-arrow-right-line"></i></a>
                            </div>
                        </div>
                    </div>
                @endforeach
                {{ $projects->links('vendor.pagination.custom') }}
            </div>
        </div>
    </div>
    <!-- End Case Study Area -->

    <!-- Start Testimonials Area -->
    <div class="testimonials-area ptb-100">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-4 col-md-12">
                    <div class="testimonials-box-content">
                        <span>{{ $tr->translate($review_section->title) }}</span>
                        <h2>{{ $tr->translate($review_section->heading) }}</h2>
                        <p>{{ $tr->translate($review_section->description) }}</p>
                        @if ($review_section->btn_url)
                            <a href="{{ $review_section->btn_url }}"
                                class="default-btn">{{ $tr->translate($review_section->btn_name) }}</a>
                        @endif

                    </div>
                </div>

                <div class="col-lg-8 col-md-12">
                    <div class="testimonials-slides-two owl-carousel owl-theme">
                        @foreach ($testimonials as $testimonial)
                            <div class="single-testimonials-card">
                                <div class="box-content">
                                    <div class="icon">
                                        <i class="flaticon-straight-quotes"></i>
                                    </div>
                                    <p>{{ $tr->translate($testimonial->review) }}</p>
                                </div>

                                <div class="info">
                                    <div class="d-flex align-items-center justify-content-start">
                                        <img src="{{ Voyager::image($testimonial->image) }}" class="rounded-circle"
                                            alt="{{ $testimonial->name }}">
                                        <div class="title">
                                            
                                            <h3><a href="{{$testimonial->url}}" target="_blank">{{ $testimonial->name }}</a></h3>
                                            <span>{{ $testimonial->title}}</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach


                    </div>
                </div>
            </div>
        </div>

        <div class="testimonials-shape-1" data-speed="0.08" data-revert="true">
            <img src="{{ asset('website') }}/assets/images/testimonials/shape-1.png" alt="Oleev">
        </div>
    </div>
    <!-- End Testimonials Area -->

    <!-- Start Expertise Area -->
    <div class="expertise-area-with-white-color ptb-100">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-6 col-md-12">
                    <div class="expertise-image-wrap top-zero" data-aos="fade-right" data-aos-delay="50"
                        data-aos-duration="500" data-aos-once="true">
                        <img src="{{ Voyager::image($expertise_section->image1) }}" alt="image">


                        @if ($expertise_section->image2)
                            <div class="expertise-shape-2" data-speed="0.08" data-revert="true">
                                <img src="{{ Voyager::image($expertise_section->image2) }}"
                                    alt="{{ $expertise_section->title }}" data-aos="fade-left" data-aos-delay="50"
                                    data-aos-duration="500" data-aos-once="true">
                            </div>
                        @endif


                    </div>
                </div>

                <div class="col-lg-6 col-md-12">
                    <div class="expertise-content black-color" data-aos="fade-left" data-aos-delay="50"
                        data-aos-duration="500" data-aos-once="true">
                        <span>{{ $tr->translate($expertise_section->title) }}</span>
                        <h2>{{ $tr->translate($expertise_section->heading) }}</h2>
                        <p>{{ $tr->translate($expertise_section->description) }}</p>

                        <div class="row justify-content-center">
                            <div class="col-lg-6 col-sm-6">
                                <div class="expertise-inner-box">
                                    <div class="icon">
                                        <i class="{{ $expertise_section->option1_icon }}"></i>
                                    </div>
                                    <h4>{{ $tr->translate($expertise_section->option1_tiltle) }}</h4>
                                    <p>{{ $tr->translate($expertise_section->option1_description) }}</p>
                                </div>
                            </div>

                            <div class="col-lg-6 col-sm-6">
                                <div class="expertise-inner-box">
                                    <div class="icon">
                                        <i class="{{ $expertise_section->option2_icon }}"></i>
                                    </div>
                                    <h4>{{ $tr->translate($expertise_section->option2_tiltle) }}</h4>
                                    <p>{{ $tr->translate($expertise_section->option2_description) }}</p>
                                </div>
                            </div>
                            @if ($expertise_section->btn_url)
                                <div class="expertise-inner-box">
                                    <a href="{{ $expertise_section->btn_url }}" class="default-btn">
                                        @if ($expertise_section->btn_name)
                                            {{ $tr->translate($expertise_section->btn_name) }}
                                        @else
                                            {{ $tr->translate('Learn More') }}
                                        @endif

                                    </a>
                                </div>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Expertise Area -->
@endsection
