   @extends('layouts.website')
   @section('content')
       <!-- Start Page Banner Area -->
       <div class="page-banner-area">
           <div class="container">
               <div class="row align-items-center justify-content-center">
                   <div class="col-lg-6 col-md-6">
                       <div class="page-banner-content" data-aos="fade-right" data-aos-delay="50" data-aos-duration="500"
                           data-aos-once="true">
                           <h2>{{ $tr->translate($team_section->title) }}</h2>

                           <ul>
                               <li>
                                   <a href="{{ route('website') }}">Home</a>
                               </li>
                               <li>{{ $team_section->title }}</li>
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

       <!-- Start Team Area -->
       <div class="team-area-without-color pt-100 pb-75">
           <div class="container">
               <div class="section-title">
                   <span>{{ $tr->translate($team_section->title) }}</span>
                   <h2>{{ $tr->translate($team_section->heading) }}</h2>
                   <p>{{ $tr->translate($team_section->description) }}</p>
               </div>

               <div class="row justify-content-center">
                   @foreach ($teams as $team)
                       <div class="col-lg-4 col-sm-6">
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
                                   <h3>{{ $team->name }}</h3>
                                   <span>{{ $team->tagline }}</span>
                               </div>
                           </div>
                       </div>
                   @endforeach
                   {{ $teams->links('vendor.pagination.custom') }}

               </div>
           </div>

           <div class="team-shape-1" data-speed="0.08" data-revert="true">
               <img src="{{ asset('website') }}/assets/images/team/shape-1.png" alt="Nurnobi Shanto">
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
                           <h2>{{ $tr->translate($ask_section->heading) }}</h2>
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
                               <a href="{{ $ask_section->btn_url }}"
                                   class="default-btn mt-5">{{ $tr->translate($ask_section->btn_name) }}</a>
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
   @endsection
