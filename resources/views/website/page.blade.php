@extends('layouts.website')
@section('content')
    <!-- Start Page Banner Area -->
    <div class="page-banner-area">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-6 col-md-6">
                    <div class="page-banner-content" data-aos="fade-right" data-aos-delay="50" data-aos-duration="500"
                        data-aos-once="true">
                        <h2>{{$page->title}}</h2>

                        <ul>
                            <li>
                                <a href="{{route('website')}}">Home</a>
                            </li>
                            <li>{{$page->title}}</li>
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

    <!-- Start Privacy Policy Area -->
    <div class="privacy-policy-area ptb-100">
        <div class="container">
            <div class="privacy-policy-content">
                {!!$page->body!!}
            </div>
        </div>
    </div>
    <!-- End Privacy Policy Area -->
@endsection
