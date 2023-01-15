   @extends('layouts.website')
   @section('content')
       <!-- Start Page Banner Area -->
       <div class="page-banner-area">
           <div class="container">
               <div class="row align-items-center justify-content-center">
                   <div class="col-lg-6 col-md-6">
                       <div class="page-banner-content" data-aos="fade-right" data-aos-delay="50" data-aos-duration="500"
                           data-aos-once="true">
                           <h2>{{ $tr->translate($service->title) }}</h2>

                           <ul>
                               <li>
                                   <a href="{{ route('website') }}">Home</a>
                               </li>
                               <li>{{ $service->title }}</li>
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

       <!-- Start Services Details Area -->
       <div class="services-details-area ptb-100">
           <div class="container">
               <div class="row">
                   <div class="col-lg-8 col-md-12">
                       <div class="services-details-desc">
                           <div class="services-details-image">
                               <img src="{{ Voyager::image($service->image) }}" alt="{{ $service->title }}">

                               <div class="icon">
                                   <i class="{{ $service->icon }}"></i>
                               </div>
                           </div>
                           <div class="services-details-content">

                               <h3>{{ $tr->translate($service->title) }}</h3>
                               <p>{{ $tr->translate($service->excerpt) }}</p>

                           </div>
                           <div class="services-details-circlechart">
                               <div class="row">
                                   @if ($service->skills)
                                       @foreach ($service->skills as $skill)
                                           <div class="col-lg-4 col-md-4">
                                               <div class="circlechart" data-percentage="{{ $skill->percent }}"></div>
                                               <span>{{ $tr->translate($skill->name) }}</span>
                                           </div>
                                       @endforeach
                                   @endif

                               </div>
                           </div>
                           <div class="services-details-content">
                               <p>{!! $tr->translate($service->body) !!}</p>

                           </div>
                           @if ($service->quote)
                               <div class="services-details-quote">
                                   <i class="flaticon-straight-quotes"></i>
                                   <p>{{ $tr->translate($service->quote) }}</p>
                                   <span>{{ $tr->translate($service->quote_by) }}</span>
                               </div>
                           @endif


                       </div>
                   </div>

                   <div class="col-lg-4 col-md-12">
                       <aside class="widget-area">
                           <div class="widget widget_search">
                               <form class="search-form" method="GET" action="{{ route('website') }}">
                                   <input name="search" type="search" class="search-field" placeholder="Search...">
                                   <button type="submit"><i class="ri-search-line"></i></button>
                               </form>
                           </div>

                           <div class="widget widget_service">
                               <h3 class="widget-title">{{$tr->translate('Our Services')}}</h3>

                               <ul class="service-list">
                                   @foreach ($services as $service)
                                       <li><a href="{{ Route('website.service', ['slug' => $service->slug]) }}"><i
                                                   class="ri-arrow-right-s-line"></i> {{ $tr->translate($service->title) }}</a></li>
                                   @endforeach
                               </ul>
                           </div>

                           <div class="widget widget_tag">
                               <h3 class="widget-title">{{$tr->translate('Tags')}}</h3>

                               <ul class="tag-list">
                                   @foreach ($alltags as $tag)
                                       <li><a href="{{ Route('website.tag', ['slug' => $tag->slug]) }}">{{ $tr->translate($tag->name) }}
                                               ({{ $tag->posts->count() }})
                                           </a></li>
                                   @endforeach


                               </ul>
                           </div>

                           <div class="widget widget_explore_topics">
                               <h3 class="widget-title">{{$tr->translate('Category Clouds')}}</h3>

                               <ul class="topics-list">
                                   @foreach ($allcategories as $category)
                                       <li>

                                           <div class="d-flex justify-content-between align-items-center">
                                               <a href="{{ Route('website.category', ['slug' => $category->slug]) }}"><i
                                                       class="ri-arrow-right-s-line"></i> {{ $tr->translate($category->name) }}</a>
                                               <span><a
                                                       href="{{ Route('website.category', ['slug' => $category->slug]) }}">({{ $category->posts->count() }})</a></span>
                                           </div>
                                       </li>
                                   @endforeach
                               </ul>
                           </div>
                       </aside>
                   </div>
               </div>
           </div>
       </div>
       <!-- End Services Details Area -->
   @endsection
