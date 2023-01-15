@extends('layouts.website')
@section('content')
    <!-- Start Page Banner Area -->
    <div class="page-banner-area">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-6 col-md-6">
                    <div class="page-banner-content" data-aos="fade-right" data-aos-delay="50" data-aos-duration="500"
                        data-aos-once="true">
                        <h2>404 Error</h2>

                        <ul>
                            <li>
                                <a href="{{route('website')}}">Home</a>
                            </li>
                            <li>404 Error</li>
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

    <!-- Start 404 Error Area -->
    <div class="error-area ptb-100">
        <div class="container">
            <div class="error-content">
                <img src="{{asset('website')}}/assets/images/error.png" alt="Oleev">
                <h3>{{$tr->translate("Error 404 : Page Not Found")}}</h3>
                <p>{{$tr->translate("The page you are looking for might have been removed had its name changed or is temporarily unavailable.")}}</p>
                <a href="{{route('website')}}" class="default-btn">{{$tr->translate("Back to Homepage")}}</a>
            </div>
        </div>
    </div>
    <!-- End 404 Error Area -->
@endsection
