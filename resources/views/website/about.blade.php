 @extends('layouts.website')
 @section('content')
     <!-- Start Page Banner Area -->
     <div class="page-banner-area">
         <div class="container">
             <div class="row align-items-center justify-content-center">
                 <div class="col-lg-6 col-md-6">
                     <div class="page-banner-content" data-aos="fade-right" data-aos-delay="50" data-aos-duration="500"
                         data-aos-once="true">
                         <h2>{{ $tr->translate($about->title) }}</h2>

                         <ul>
                             <li>
                                 <a href="{{ route('website') }}">Home</a>
                             </li>
                             <li>{{ $about->title }}</li>
                         </ul>
                     </div>
                 </div>

                 <div class="col-lg-6 col-md-6">
                     <div class="page-banner-image" data-speed="0.08" data-revert="true">
                         <img src="{{ asset('website') }}/assets/images/page-banner-image.png" alt="Nurnbi Shanto"
                             data-aos="fade-left" data-aos-delay="50" data-aos-duration="500" data-aos-once="true">
                     </div>
                 </div>
             </div>
         </div>
     </div>
     <!-- End Page Banner Area -->

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

                     </div>
                 </div>
             </div>
             <div class="expertise-content black-color">
               <div class="row justify-content-center">
                 @if ($about->option1_tiltle)
                     <div class="col-lg-6 col-sm-6">
                         <div class="expertise-inner-box">
                             <div class="icon">
                                 <i class="{{ $about->option1_icon }}"></i>
                             </div>
                             <h4>{{ $tr->translate($about->option1_tiltle) }}</h4>
                             <p>{{ $tr->translate($about->option1_description) }}</p>
                         </div>
                     </div>
                 @endif
                 @if ($about->option2_tiltle)
                     <div class="col-lg-6 col-sm-6">
                         <div class="expertise-inner-box">
                             <div class="icon">
                                 <i class="{{ $about->option2_icon }}"></i>
                             </div>
                             <h4>{{ $tr->translate($about->option2_tiltle) }}</h4>
                             <p>{{ $tr->translate($about->option2_description) }}</p>
                         </div>
                     </div>
                 @endif

             </div>  
             </div>
             
         </div>
     </div>
     <!-- End About Area -->

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


     <!-- Start Working Process Area -->
     <div class="working-process-area pt-100 pb-75">
         <div class="container">
             <div class="section-title">
                 <span>Working Process</span>
                 <h2>Easy Process We Follow To Get Result</h2>
             </div>

             <div class="row justify-content-center">
                 <div class="col-lg-3 col-sm-6">
                     <div class="single-working-process-card">
                         <div class="number">01</div>
                         <h3>Discovery</h3>
                         <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                             labore et dolore.</p>
                     </div>
                 </div>
                 <div class="col-lg-3 col-sm-6">
                     <div class="single-working-process-card">
                         <div class="number">02</div>
                         <h3>Planning</h3>
                         <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                             labore et dolore.</p>
                     </div>
                 </div>
                 <div class="col-lg-3 col-sm-6">
                     <div class="single-working-process-card">
                         <div class="number">03</div>
                         <h3>Practise</h3>
                         <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                             labore et dolore.</p>
                     </div>
                 </div>
                 <div class="col-lg-3 col-sm-6">
                     <div class="single-working-process-card">
                         <div class="number">04</div>
                         <h3>Delivery</h3>
                         <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                             labore et dolore.</p>
                     </div>
                 </div>

                 <div class="working-process-line"></div>
             </div>
         </div>
     </div>
     <!-- End Working Process Area -->

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

     <!-- Start Contact Area -->
     <div class="contact-area pb-100 pt-100">
         <div class="container">
             <div class="section-title">
                 <h2>{{ $tr->translate('Get In Touch') }}</h2>
             </div>



             <form class="contactForm" class="col" action="{{ route('contactform.store') }}" method="POST">
                 @if (Session::has('success'))
                     <div class="alert alert-success">
                         {{ Session::get('success') }}
                         @php
                             Session::forget('success');
                         @endphp
                     </div>
                 @endif
                 @csrf
                 <div class="row">
                     <div class="col-lg-12 col-md-12">
                         <div class="form-group">
                             <select name="type" class="form-select">
                                 @foreach ($services as $service)
                                     <option value="{{ $service->title }}">{{ $service->title }}</option>
                                 @endforeach


                             </select>
                             @if ($errors->has('type'))
                                 <span class="text-danger">{{ $errors->first('type') }}</span>
                             @endif
                         </div>
                     </div>
                     <div class="col-lg-6 col-md-12">
                         <div class="form-group">
                             <label>{{ $tr->translate('Your Name *') }}</label>
                             <input value="{{ old('name') }}" type="text" name="name" id="name" class="form-control"
                                 placeholder="{{ $tr->translate('Eg: Thomas Adison') }}"
                                 data-error="Please enter your name">
                             <div class="help-block with-errors">
                                 @if ($errors->has('name'))
                                     <span class="text-danger">{{ $errors->first('name') }}</span>
                                 @endif
                             </div>

                         </div>
                     </div>
                     <div class="col-lg-6 col-md-12">
                         <div class="form-group">
                             <label>{{ $tr->translate('Email *') }}</label>
                             <input value="{{ old('email') }}" type="email" name="email" id="email"
                                 class="form-control" placeholder="{{ $tr->translate('Eg: example@brizdeck.com') }}"
                                 data-error="Please enter your email">
                             <div class="help-block with-errors">
                                 @if ($errors->has('email'))
                                     <span class="text-danger">{{ $errors->first('email') }}</span>
                                 @endif
                             </div>
                         </div>
                     </div>
                     <div class="col-lg-6 col-md-12">
                         <div class="form-group">
                             <label>{{ $tr->translate('Phone *') }}</label>
                             <input value="{{ old('phone') }}" type="text" name="phone" id="phone_number"
                                 placeholder="{{ $tr->translate('Enter your phone number') }}"
                                 data-error="Please enter your number" class="form-control">
                             <div class="help-block with-errors">
                                 @if ($errors->has('phone'))
                                     <span class="text-danger">{{ $errors->first('phone') }}</span>
                                 @endif
                             </div>
                         </div>
                     </div>
                     <div class="col-lg-6 col-md-12">
                         <div class="form-group">
                             <label>{{ $tr->translate('Subject *') }}</label>
                             <input value="{{ old('subject') }}" type="text" name="subject" id="msg_subject"
                                 placeholder="{{ $tr->translate('Enter your subject') }}" class="form-control"
                                 data-error="Please enter your subject">
                             <div class="help-block with-errors">
                                 @if ($errors->has('subject'))
                                     <span class="text-danger">{{ $errors->first('subject') }}</span>
                                 @endif
                             </div>
                         </div>
                     </div>
                     <div class="col-lg-12 col-md-12">
                         <div class="form-group">
                             <label>{{ $tr->translate('Your Message') }}</label>
                             <textarea value="{{ old('message') }}" name="message" class="form-control" id="message"
                                 placeholder="{{ $tr->translate('Type your message') }}" cols="30" rows="6"
                                 data-error="Write your message"></textarea>
                             <div class="help-block with-errors">
                                 @if ($errors->has('message'))
                                     <span class="text-danger">{{ $errors->first('message') }}</span>
                                 @endif
                             </div>
                         </div>
                     </div>
                     <div class="col-lg-12 col-md-12">
                         <p class="form-cookies-consent">
                             <input type="checkbox" id="test1" required>
                             <label for="test1">{{ $tr->translate('Accept') }} <a
                                     href="{{ route('website.terms') }}">{{ $tr->translate('Terms Of Services') }}</a>
                                 {{ $tr->translate('And') }} <a
                                     href="{{ route('website.privacy') }}">{{ $tr->translate('Privacy Policy.') }}</a></label>
                         </p>
                     </div>
                     <div class="col-lg-12 col-md-12">
                         <div class="send-btn">
                             <button type="submit" class="default-btn">Contact Now</button>
                         </div>
                         <div id="msgSubmit" class="h3 text-center hidden"></div>
                         <div class="clearfix"></div>
                     </div>
                 </div>
             </form>

         </div>
     </div>
     <!-- End Contact Area -->
 @endsection
