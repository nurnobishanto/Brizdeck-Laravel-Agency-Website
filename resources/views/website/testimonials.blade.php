@extends('layouts.website')

@section('content')
 <!-- Start Page Banner Area -->
 <div class="page-banner-area">
    <div class="container">
        <div class="row align-items-center justify-content-center">
            <div class="col-lg-6 col-md-6">
                <div class="page-banner-content" data-aos="fade-right" data-aos-delay="50" data-aos-duration="500" data-aos-once="true">
                    <h2>{{$tr->translate($review_section->title)}}</h2>

                    <ul>
                        <li>
                            <a href="{{route('website')}}">Home</a>
                        </li>
                        <li>{{$review_section->title}}</li>
                    </ul>
                </div>
            </div>

            <div class="col-lg-6 col-md-6">
                <div class="page-banner-image" data-speed="0.08" data-revert="true">
                    <img src="{{asset('website')}}/assets/images/page-banner-image.png" alt="Oleev" data-aos="fade-left" data-aos-delay="50" data-aos-duration="500" data-aos-once="true">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Page Banner Area -->

<!-- Start Testimonials Area -->
<div class="testimonials-area-without-color ptb-100">
    <div class="container">
        <div class="section-title">
            <span>{{$tr->translate($review_section->title)}}</span>
            <h2>{{$tr->translate($review_section->heading)}}</h2>
            <p>{{$tr->translate($review_section->description)}}</p>
        </div>

        <div class="row justify-content-center">
            @foreach ($testimonials as $testimonial)
            <div class="col-lg-4 col-md-6">
                <div class="single-testimonials-card">
                    <div class="box-content">
                        <div class="icon">
                            <i class="flaticon-straight-quotes"></i>
                        </div>
                        <p>{{$tr->translate($testimonial->review)}}</p>
                    </div>

                    <div class="info">
                        <div class="d-flex align-items-center justify-content-start">
                            <img src="{{voyager::image($testimonial->image)}}" class="rounded-circle" alt="{{$testimonial->name}}">
                            <div class="title">
                                <h3> <a href="{{$testimonial->url}}" target="_blank" rel="noopener noreferrer"> {{$testimonial->name}}</a></h3>
                                <span>{{$testimonial->title}}</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div> 
            @endforeach

            {{$testimonials->links('vendor.pagination.custom')}}
       
    </div>
</div>
<!-- End Testimonials Area -->

<!-- Start Partner Area -->
<div class="partner-area ptb-65">
    <div class="container">
        <div class="partner-slides owl-carousel owl-theme">
            @foreach ($brands as $brand)
            <div class="image-box">
                 <a href="{{$brand->url}}" target="_blank">
                    <img src="{{ Voyager::image( $brand->image )}}" alt="{{$brand->name}}">
                </a>
            </div> 
         @endforeach      
        </div>
    </div>
</div>
<!-- End Partner Area -->
@endsection