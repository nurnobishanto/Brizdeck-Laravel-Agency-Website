@extends('layouts.website')

@section('content')
    <!-- Start Main Hero Area -->
    <div class="main-hero-area" style='background-image: url("{{ Voyager::image($hero_section->background) }}")'>
        <div class="container-fluid">
            <div class="main-hero-content" data-speed="0.05" data-revert="true">
                <span data-aos="fade-right" data-aos-delay="50" data-aos-duration="500"
                    data-aos-once="true">{{ $tr->translate($hero_section->title) }}</span>
                <h1 style="font-weight: bold" data-aos="fade-right" data-aos-delay="70" data-aos-duration="700" data-aos-once="true">
                    {{ $tr->translate($hero_section->heading) }}</h1>
                <p data-aos="fade-right" data-aos-delay="80" data-aos-duration="800" data-aos-once="true">
                    {{ $tr->translate($hero_section->description) }}</p>

                <ul class="hero-btn" data-aos="fade-right" data-aos-delay="90" data-aos-duration="900"
                    data-aos-once="true">

                    <li>
                        @if ($hero_section->btn_url)
                            <a href="{{ $hero_section->btn_url }}"
                                class="default-btn">{{ $tr->translate($hero_section->btn_name) }}</a>
                        @endif

                    </li>
                </ul>
            </div>
        </div>

        <div class="main-hero-shape-1" data-speed="0.08" data-revert="true">
            <img src="{{ asset('website') }}/assets/images/about/shape-1.png" alt="Oleev">

        </div>
        <div class="main-hero-shape-2" data-speed="0.08" data-revert="true">
            <img src="{{ asset('website') }}/assets/images/about/shape-2.png" alt="Oleev">

        </div>
    </div>
    <!-- End Main Hero Area -->

    <!-- Start About Area -->
    <div class="about-area ptb-100" style='background-image: url("{{ Voyager::image($about->background) }}")'>
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-6 col-md-12">
                    <div class="about-image-wrap">
                        <img src="{{ Voyager::image($about->image1) }}" alt="{{ $about->name }}" data-aos="fade-down"
                            data-aos-delay="50" data-aos-duration="500" data-aos-once="true">
                        <img src="{{ Voyager::image($about->image2) }}" alt="{{ $about->name }}" data-aos="fade-up"
                            data-aos-delay="50" data-aos-duration="500" data-aos-once="true">

                        <div class="about-shape-3" data-speed="0.08" data-revert="true">
                            <img src="{{ asset('website') }}/assets/images/about/shape-1.png" alt="Oleev">
                        </div>
                    </div>
                </div>

                <div class="col-lg-6 col-md-12" data-aos="fade-left" data-aos-delay="50" data-aos-duration="500"
                    data-aos-once="true">
                    <div class="about-content">
                        <span>{{ $tr->translate($about->title) }}</span>

                        <h3>{{ $tr->translate($about->heading) }}</h3>
                        <p>{{ $tr->translate($about->description) }}</p>
                        <div class="about-btn">
                            @if ($about->btn_url)
                                <a href="{{ $about->btn_url }}" class="default-btn">
                                    @if ($about->btn_name)
                                        {{ $tr->translate($about->btn_name) }}
                                    @else
                                        {{ $tr->translate('Loarn More') }}
                                    @endif

                                </a>
                            @endif

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End About Area -->

    <!-- Start Services Area -->
    <div class="services-area bg-F9F5F4 pt-100 pb-75"
        style='background-image: url("{{ Voyager::image($services_section->background) }}")'>
        <div class="container">
            <div class="section-title">
                <span>{{ $tr->translate($services_section->title) }}</span>
                <h2>{{ $tr->translate($services_section->heading) }}</h2>
                <p>{{ $tr->translate($services_section->description) }}</p>
            </div>

            <div class="row justify-content-center">
                @foreach ($services as $service)
                    <div class="col-lg-4 col-md-6">
                        <div class="single-services-box">
                            <div class="icon">
                                <i class="{{ $service->icon }}"></i>
                            </div>
                            <h3>
                                <a
                                    href="{{ Route('website.service', ['slug' => $service->slug]) }}">{{ $tr->translate($service->title) }}</a>
                            </h3>
                            <p>{{ $tr->translate($service->excerpt) }}</p>
                            <a href="{{ Route('website.service', ['slug' => $service->slug]) }}"
                                class="services-btn">{{ $tr->translate('Learn More') }}</a>
                            <div class="back-icon">
                                <i class="{{ $service->icon }}"></i>
                            </div>
                        </div>
                    </div>
                @endforeach
                <div class="view-more-btn">
                    @if ($services_section->btn_url)
                        <a href="{{ $services_section->btn_url }}" class="default-btn">
                            @if ($services_section->btn_name)
                                {{ $tr->translate($services_section->btn_name) }}
                            @else
                                {{ $tr->translate('More') }}
                            @endif

                        </a>
                    @endif

                </div>

            </div>
        </div>
    </div>
    <!-- End Services Area -->
    <!-- Start Why Choose Us Area -->
    <div class="why-choose-us-area-with-video ptb-100"
        style='background-image: url("{{ Voyager::image($wcus_section->background) }}")'>
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-6 col-md-12">
                    <div class="why-choose-us-video-view" data-speed="0.09" data-revert="true">
                        @if ($wcus_section->video_url)
                            <a href="{{ $wcus_section->video_url }}" class="video-btn popup-youtube">
                                <i class="flaticon-play-button"></i>
                        @endif

                        </a>
                    </div>
                </div>

                <div class="col-lg-6 col-md-12">
                    <div class="why-choose-us-content wrap-color" data-aos="fade-left" data-aos-delay="50"
                        data-aos-duration="500" data-aos-once="true">
                        <span>{{ $tr->translate($wcus_section->title) }}</span>
                        <h3>{{ $tr->translate($wcus_section->heading) }}</h3>
                        <p>{{ $tr->translate($wcus_section->description) }}</p>
                        @if ($wcus_section->option1_tiltle)
                            <div class="choose-us-inner-box">
                                <div class="icon">
                                    <i class="{{ $wcus_section->option1_icon }}"></i>
                                </div>
                                <h4>{{ $tr->translate($wcus_section->option1_tiltle) }}</h4>
                                <p>{{ $tr->translate($wcus_section->option1_description) }}</p>
                            </div>
                        @endif
                        @if ($wcus_section->option2_tiltle)
                            <div class="choose-us-inner-box">
                                <div class="icon">
                                    <i class="{{ $wcus_section->option2_icon }}"></i>
                                </div>
                                <h4>{{ $tr->translate($wcus_section->option2_tiltle) }}</h4>
                                <p>{{ $tr->translate($wcus_section->option2_description) }}.</p>
                            </div>
                        @endif
                        @if ($wcus_section->btn_url)
                            <div class="choose-us-inner-box">
                                <a href="{{ $wcus_section->btn_url }}" class="default-btn">
                                    @if ($wcus_section->btn_name)
                                        {{ $tr->translate($wcus_section->btn_name) }}
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
    <!-- End Why Choose Us Area -->


    <!-- Start Funfact Area -->
    <div class="fun-fact-area bg-two pt-100 pb-75">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-3 col-sm-6 col-6">
                    <div class="single-funfact-card">
                        <h3>
                            <span class="odometer" data-count="{{ setting('site.happy_client') }}">00</span>
                            <span class="small-text">+</span>
                        </h3>
                        <p>{{ $tr->translate('Happy') }} <br>{{ $tr->translate('Clients') }} </p>
                    </div>
                </div>

                <div class="col-lg-3 col-sm-6 col-6">
                    <div class="single-funfact-card">
                        <h3>
                            <span class="odometer" data-count="{{ setting('site.total_project') }}">00</span>
                            <span class="small-text">+</span>
                        </h3>
                        <p>{{ $tr->translate('Total') }} <br>{{ $tr->translate('Projects') }} </p>
                    </div>
                </div>

                <div class="col-lg-3 col-sm-6 col-6">
                    <div class="single-funfact-card">
                        <h3>
                            <span class="odometer" data-count="{{ setting('site.world_partner') }}">00</span>
                            <span class="small-text">+</span>
                        </h3>
                        <p>{{ $tr->translate('Worldwide') }} <br>{{ $tr->translate('Partner') }} </p>
                    </div>
                </div>

                <div class="col-lg-3 col-sm-6 col-6">
                    <div class="single-funfact-card">
                        <h3>
                            <span class="odometer" data-count="{{ setting('site.positive_review') }}">00</span>
                            <span class="small-text">+</span>
                        </h3>
                        <p>{{ $tr->translate('Positive') }}<br>{{ $tr->translate('Review') }}</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="fun-fact-shape-1" data-speed="0.09" data-revert="true">
            <img src="{{ asset('website') }}/assets/images/funfact/shape-1.png" alt="image">
        </div>
    </div>
    <!-- End Funfact Area -->


    <!-- Start Case Study Area -->
    <div class="case-study-area pt-100 pb-75">
        <div class="container">
            <div class="section-title-wrap">
                <div class="row align-items-center">
                    <div class="col-lg-7 col-md-12">
                        <span>{{ $tr->translate($portfolio_section->title) }}</span>
                        <h2>{{ $tr->translate($portfolio_section->heading) }}</h2>
                        <p>{{ $tr->translate($portfolio_section->description) }}</p>
                    </div>

                    <div class="col-lg-5 col-md-12 text-end">
                        @if ($portfolio_section->btn_url)
                            <a href="{{ $portfolio_section->btn_url }}" class="default-btn">
                                @if ($portfolio_section->btn_name)
                                    {{ $tr->translate($portfolio_section->btn_name) }}
                                @else
                                    {{ $tr->translate('More') }}
                                @endif

                            </a>
                        @endif

                    </div>
                </div>
            </div>

            <div class="row justify-content-center">
                @foreach ($projects as $project)
                    <div class="col-lg-4 col-md-4">
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
            </div>
        </div>
    </div>
    <!-- End Case Study Area -->
    <!-- Start Expertise Area -->
    <div class="expertise-area-with-white-color pb-100">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-6 col-md-12">
                    <div class="expertise-image-wrap top-zero" data-aos="fade-right" data-aos-delay="50"
                        data-aos-duration="500" data-aos-once="true">
                        @if ($expertise_section->image1)
                            <img src="{{ Voyager::image($expertise_section->image1) }}" alt="image">
                        @endif
                        @if ($expertise_section->image2)
                            <div class="expertise-shape-2" data-speed="0.08" data-revert="true">
                                <img src="{{ Voyager::image($expertise_section->image2) }}" alt="image"
                                    data-aos="fade-left" data-aos-delay="50" data-aos-duration="500" data-aos-once="true">
                            </div>
                        @endif



                    </div>
                </div>

                <div class="col-lg-6 col-md-12">
                    <div class="expertise-content black-color" data-aos="fade-left" data-aos-delay="50"
                        data-aos-duration="500" data-aos-once="true">
                        <span>{{ $tr->translate($expertise_section->title) }}</span>
                        <h3>{{ $tr->translate($expertise_section->heading) }}</h3>
                        <p>{{ $tr->translate($expertise_section->description) }}</p>

                        <div class="row justify-content-center">
                            @if ($expertise_section->option1_tiltle)
                                <div class="col-lg-6 col-sm-6">
                                    <div class="expertise-inner-box">
                                        <div class="icon">
                                            <i class="{{ $expertise_section->option1_icon }}"></i>
                                        </div>
                                        <h4>{{ $tr->translate($expertise_section->option1_tiltle) }}</h4>
                                        <p>{{ $tr->translate($expertise_section->option1_description) }}</p>
                                    </div>
                                </div>
                            @endif
                            @if ($expertise_section->option2_tiltle)
                                <div class="col-lg-6 col-sm-6">
                                    <div class="expertise-inner-box">
                                        <div class="icon">
                                            <i class="{{ $expertise_section->option2_icon }}"></i>
                                        </div>
                                        <h4>{{ $tr->translate($expertise_section->option2_tiltle) }}</h4>
                                        <p>{{ $tr->translate($expertise_section->option2_description) }}</p>
                                    </div>
                                </div>
                            @endif
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



    <!-- Start Testimonials Area -->
    <div class="testimonials-area ptb-100">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-4 col-md-12">
                    <div class="testimonials-box-content">
                        <span>{{ $tr->translate($review_section->title) }}</span>
                        <h3>{{ $tr->translate($review_section->heading) }}</h3>
                        <p>{{ $tr->translate($review_section->description) }}</p>
                        @if ($review_section->btn_url)
                            <a href="{{ $review_section->btn_url }}" class="default-btn">
                                @if ($review_section->btn_name)
                                    {{ $tr->translate($review_section->btn_name) }}
                                @else
                                    {{ $tr->translate('Learn More') }}
                                @endif

                            </a>
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
                                            <h3>{{ $testimonial->name }}</h3>
                                            <span>{{ $testimonial->title }}</span>
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

    <!-- Start Team Area -->
    <div class="team-area pt-100 pb-75">
        <div class="container">
            <div class="section-title">
                <span class="text-light">{{ $tr->translate($team_section->title) }}</span>
                <h2>{{ $tr->translate($team_section->heading) }}</h2>
                <p class="text-light">{{ $tr->translate($team_section->description) }}</p>
            </div>

            <div class="team-slides-two owl-carousel owl-theme">
                @foreach ($teams as $team)
                    <div class="single-team-item">
                        <div class="team-image">
                            <img src="{{ Voyager::image($team->image) }}" alt="{{ $team->name }}">

                            <ul class="social">
                                @if ($team->facebook)
                                    <li>
                                        <a href="{{ $team->facebook }}" target="_blank">
                                            <i class="ri-facebook-fill"></i>
                                        </a>
                                    </li>
                                @endif
                                @if ($team->twitter)
                                    <li>
                                        <a href="{{ $team->twitter }}" target="_blank">
                                            <i class="ri-twitter-fill"></i>
                                        </a>
                                    </li>
                                @endif
                                @if ($team->instagram)
                                    <li>
                                        <a href="{{ $team->instagram }}" target="_blank">
                                            <i class="ri-instagram-line"></i>
                                        </a>
                                    </li>
                                @endif
                                @if ($team->linkedin)
                                    <li>
                                        <a href="{{ $team->linkedin }}" target="_blank">
                                            <i class="ri-linkedin-line"></i>
                                        </a>
                                    </li>
                                @endif
                                @if ($team->website)
                                    <li>
                                        <a href="{{ $team->website }}" target="_blank">
                                            <i class="ri-global-fill"></i>
                                        </a>
                                    </li>
                                @endif
                                @if ($team->github)
                                    <li>
                                        <a href="{{ $team->github }}" target="_blank">
                                            <i class="ri-github-fill"></i>
                                        </a>
                                    </li>
                                @endif
                                @if ($team->youtube)
                                    <li>
                                        <a href="{{ $team->youtube }}" target="_blank">
                                            <i class="ri-youtube-fill"></i>
                                        </a>
                                    </li>
                                @endif
                            </ul>
                        </div>
                        <div class="team-content">
                            <h3>
                                {{-- <a href="{{ Route('website.team', ['slug' => $team->slug]) }}">{{ $team->name }}</a> --}}
                                {{ $team->name }}
                            </h3>
                            <span>{{ $team->tagline }}</span>
                        </div>
                    </div>
                @endforeach

            </div>
        </div>

        <div class="team-shape-1" data-speed="0.08" data-revert="true">
            <img src="{{ asset('website') }}/assets/images/team/shape-1.png" alt="Oleev">
        </div>
    </div>
    <!-- End Team Area -->



    <!-- Start FAQ Area -->
    <div class="faq-area ptb-100">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-6 col-md-12">
                    <div class="faq-content">
                        <span>{{ $tr->translate($ask_section->title) }}</span>
                        <h3>{{ $tr->translate($ask_section->heading) }}</h3>
                        <p>{{ $tr->translate($ask_section->description) }}</p>
                        <div class="row justify-content-center">
                            @foreach ($skills as $skill)
                                <div class="col-lg-6 col-sm-6">
                                    <div class="faq-circlechart-box">
                                        <div class="circlechart" data-percentage="{{ $skill->percent }}"></div>
                                        <span>{{ $tr->translate($skill->name) }}</span>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                        @if ($ask_section->btn_url)
                            <a class="default-btn mt-5" href="{{ $ask_section->btn_url }}" target="_blank"
                                rel="noopener noreferrer">
                                @if ($ask_section->btn_name)
                                    {{ $tr->translate($ask_section->btn_name) }}
                                @else
                                    {{ $tr->translate('More') }}
                                @endif

                            </a>
                        @endif
                    </div>
                </div>

                <div class="col-lg-6 col-md-12">
                    <div class="faq-accordion">
                        <div class="accordion" id="FaqAccordion">
                            @php
                                $show = 'show';
                            @endphp
                            @foreach ($faqs as $faq)
                                <div class="accordion-item">
                                    <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapse{{ $faq->id }}" aria-expanded="true"
                                        aria-controls="collapse{{ $faq->id }}">
                                        {{ $tr->translate($faq->question) }}
                                    </button>
                                    <div id="collapse{{ $faq->id }}"
                                        class="accordion-collapse collapse {{ $show }}"
                                        data-bs-parent="#FaqAccordion">
                                        <div class="accordion-body">
                                            <p>{{ $tr->translate($faq->answer) }}</p>
                                        </div>
                                    </div>
                                </div>
                                @php
                                    $show = 'hidden';
                                @endphp
                            @endforeach


                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- End FAQ Area -->

    <!-- Start Blog Area -->
    <div class="blog-area pb-100 pt-100">
        <div class="container">
            <div class="section-title">
                <span>{{ $tr->translate($blog_section->title) }}</span>
                <h2>{{ $tr->translate($blog_section->heading) }}</h2>
                <p>{{ $tr->translate($blog_section->description) }}</p>
            </div>

            <div class="row justify-content-center">
                @foreach ($allposts as $post)
                    <div class="col-lg-4 col-md-4">
                        <div class="single-blog-card">
                            <div class="blog-image">

                                @if (Voyager::image($post->image))
                                    <a href="{{ Route('website.post', ['slug' => $post->slug]) }}"><img
                                            src="{{ Voyager::image($post->thumbnail('medium')) }}"
                                            alt="{{ $post->title }}"></a>
                                @else
                                    <a href="{{ Route('website.post', ['slug' => $post->slug]) }}"><img
                                            src="{{ asset('website') }}/assets/images/blog/blog.jpg"
                                            alt="{{ $tr->translate($post->title) }}"></a>
                                @endif


                            </div>
                            <div class="blog-content with-padding">
                                @if ($post->user)
                                    <span>By <a
                                            href="{{ route('website.author', ['slug' => $post->user->slug]) }}">{{ $post->user->name }}</a></span>
                                @else
                                @endif

                                <h3>
                                    <a
                                        href="{{ Route('website.post', ['slug' => $post->slug]) }}">{{ $post->title }}</a>
                                </h3>
                                @if (strlen($post->excerpt) != 0)
                                    <p>{{ Str::limit($tr->translate($post->excerpt), 100, ' ...') }}</p>
                                @else
                                    <p>{{ Str::limit(strip_tags($tr->translate($post->body)), 100, ' ...') }}</p>
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

            <div class="view-more-btn">
                @if ($blog_section->btn_url)
                    <a href="{{ $blog_section->btn_url }}" class="default-btn">
                        @if ($blog_section->btn_name)
                            {{ $tr->translate($blog_section->btn_name) }}
                        @else
                            {{ $tr->translate('More') }}
                        @endif

                    </a>
                @endif

            </div>
        </div>
    </div>
    <!-- End Blog Area -->
@endsection
