@extends('layouts.website')

@section('content')
    <!-- Start Page Banner Area -->
    <div class="page-banner-area">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-6 col-md-6">
                    <div class="page-banner-content" data-aos="fade-right" data-aos-delay="50" data-aos-duration="500" data-aos-once="true">
                        <h2>{{$tr->translate("Ask Any Question")}}</h2>
    
                        <ul>
                            <li>
                                <a href="index.html">Home</a>
                            </li>
                            <li>FAQ</li>
                        </ul>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6">
                    <div class="page-banner-image" data-speed="0.08" data-revert="true">
                        <img src="{{asset('website') }}/assets/images/page-banner-image.png" alt="Oleev" data-aos="fade-left" data-aos-delay="50" data-aos-duration="500" data-aos-once="true">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Page Banner Area -->

    <!-- Start FAQ Area -->
    <div class="faq-area-without-color ptb-100">
        <div class="container">
            <div class="section-title">
                <span>{{$tr->translate($ask_section->title)}}</span>
                <h2>{{$tr->translate($ask_section->heading)}}</h2>
                <p>{{$tr->translate($ask_section->description)}}</p>
            </div>

            <div class="row justify-content-center">
                <div class="col-lg-10 col-md-12">
                    <div class="faq-accordion">
                        <div class="accordion" id="FaqAccordion">
                            @php
                                $show = "show";
                            @endphp
                            @foreach ($faqs as $faq)
                           
                            <div class="accordion-item">
                                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse{{$faq->id}}" aria-expanded="true" aria-controls="collapse{{$faq->id}}">
                                    {{$tr->translate($faq->question)}}
                                </button>
                                <div id="collapse{{$faq->id}}" class="accordion-collapse collapse {{$show}}" data-bs-parent="#FaqAccordion">
                                    <div class="accordion-body">
                                        <p>{{$tr->translate($faq->answer)}}</p>
                                    </div>
                                </div>
                            </div>   
                            @php
                                $show = "hidden";
                            @endphp 
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End FAQ Area -->
         <!-- Start Partner Area -->
         <div class="partner-area ptb-65">
            <div class="container">
                <div class="partner-slides owl-carousel owl-theme">
                    @foreach ($brands as $brand)
                       <div class="image-box">
                        <a href="{{$brand->url}}" target="_blank"><img src="{{ Voyager::image( $brand->image )}}" alt="{{$brand->name}}"></a>
                    </div> 
                    @endforeach
                </div>
            </div>
        </div>
        <!-- End Partner Area -->

@endsection
