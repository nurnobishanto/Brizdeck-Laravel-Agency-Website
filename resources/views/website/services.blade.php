@extends('layouts.website')

@section('content')
    <!-- Start Page Banner Area -->
    <div class="page-banner-area">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-6 col-md-6">
                    <div class="page-banner-content" data-aos="fade-right" data-aos-delay="50" data-aos-duration="500"
                        data-aos-once="true">
                        <h2>{{$tr->translate('Our Services')}}</h2>

                        <ul>
                            <li>
                                <a href="{{route('website')}}">Home</a>
                            </li>
                            <li>Services</li>
                        </ul>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6">
                    <div class="page-banner-image" data-speed="0.08" data-revert="true">
                        <img src="{{asset('website')}}/assets/images/page-banner-image.png" alt="Oleev" data-aos="fade-left" data-aos-delay="50"
                            data-aos-duration="500" data-aos-once="true">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Page Banner Area -->

    <!-- Start Services Area -->
    <div class="services-area pt-100 pb-100">
        <div class="container">
            <div class="section-title">
                <span>{{$tr->translate($services_section->title)}}</span>
                <h2>{{$tr->translate($services_section->heading)}}</h2>
                <p>{{$tr->translate($services_section->description)}}</p>
            </div>

            <div class="row justify-content-center">
                @foreach ($services as $service)
                <div class="col-lg-4 col-md-6">
                    <div class="single-services-box">
                        <div class="icon">
                            <i class="{{$service->icon}}"></i>
                        </div>
                        <h3>
                            <a href="{{Route('website.service',['slug'=>$service->slug])}}">{{$tr->translate($service->title)}}</a>
                        </h3>
                        <p>{{$tr->translate($service->excerpt) }}</p>
                        <a href="{{Route('website.service',['slug'=>$service->slug])}}" class="services-btn">{{$tr->translate('Learn More')}}</a>
                        <div class="back-icon">
                            <i class="{{$service->icon}}"></i>
                        </div>
                    </div>
                </div>  
                @endforeach
            </div>

            {{$services->links('vendor.pagination.custom')}}
        </div>
    </div>
    <!-- End Services Area -->

    <!-- Start Testimonials Area -->
    <div class="testimonials-area ptb-100">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-4 col-md-12">
                    <div class="testimonials-box-content">
                        <span>{{$tr->translate($review_section->title)}}</span>
                        <h3>{{$tr->translate($review_section->heading)}}</h3>
                        <p>{{$tr->translate($review_section->description)}}</p>
                        @if ($review_section->btn_url)
                        <a href="{{$review_section->btn_url}}" class="default-btn">{{$tr->translate($review_section->btn_name)}}</a>
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
            <img src="{{asset('website')}}/assets/images/testimonials/shape-1.png" alt="Oleev">
        </div>
    </div>
    <!-- End Testimonials Area -->
@endsection
