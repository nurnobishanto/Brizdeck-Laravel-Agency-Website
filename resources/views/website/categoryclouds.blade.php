@extends('layouts.website')

@section('content')
       <!-- Start Page Banner Area -->
        <div class="page-banner-area">
            <div class="container">
                <div class="row align-items-center justify-content-center">
                    <div class="col-lg-6 col-md-6">
                        <div class="page-banner-content" data-aos="fade-right" data-aos-delay="50" data-aos-duration="500" data-aos-once="true">
                            <h2>{{$tr->translate('Category Clouds')}}</h2>
        
                            <ul>
                                <li>
                                    <a href="{{Route('website')}}">Home</a>
                                </li>
                                <li>Categories</li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-lg-6 col-md-6">
                        <div class="page-banner-image" data-speed="0.08" data-revert="true">
                            <img src="{{ asset('website') }}/assets/images/page-banner-image.png" alt="Oleev" data-aos="fade-left" data-aos-delay="50" data-aos-duration="500" data-aos-once="true">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Page Banner Area -->
        
        <!-- Start Blog Area -->
        <div class="blog-area ptb-100">
            <div class="container ">
                <div class="row">
                    <div class="col-lg-8 col-md-12">                
                        <div class="widget-area">                    
                            <div class="widget widget_tag">
                                <h3 class="widget-title">{{$tr->translate('Category Clouds')}}</h3>
                                
                                <ul class="tag-list">
                                    @foreach ($allcategories as $category)
                                    <li><a href="{{Route('website.category',['slug'=>$category->slug])}}">{{$tr->translate($category->name)}} (<span>{{$category->posts->count()}}</span>)</a></li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>                       
                    </div>
                     @include('include.sidebar')
                </div>
            </div>
        </div>
        <!-- End Blog Area -->
        @endsection