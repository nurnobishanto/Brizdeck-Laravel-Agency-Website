@extends('layouts.website')

@section('content')
 <!-- Start Page Banner Area -->
 <div class="page-banner-area">
    <div class="container">
        <div class="row align-items-center justify-content-center">
            <div class="col-lg-6 col-md-6">
                <div class="page-banner-content" data-aos="fade-right" data-aos-delay="50" data-aos-duration="500" data-aos-once="true">
                    <h2>{{$tr->translate('Contact Us')}}</h2>

                    <ul>
                        <li>
                            <a href="{{route('website')}}">Home</a>
                        </li>
                        <li>{{$tr->translate('Contact')}}</li>
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

<!-- Start Contact Information Area -->
<div class="contact-information-area pt-100 pb-75">
    <div class="container">
        <div class="section-title">
            <span>{{$tr->translate($contact_section->title)}}</span>
            <h2>{{$tr->translate($contact_section->heading)}}</h2>
            <p>{{$tr->translate($contact_section->description)}}</p>
        </div>

        <div class="row justify-content-center">
            <div class="col-lg-3 col-md-6">
                <div class="contact-information-card">
                    <div class="icon">
                        <i class="ri-map-pin-line"></i>
                    </div>
                    <h3>{{$tr->translate('Address')}}</h3>
                    <p>{{$tr->translate(setting('site.address'))}}</p>
                </div>
            </div>

            <div class="col-lg-3 col-md-6">
                <div class="contact-information-card">
                    <div class="icon">
                        <i class="ri-mail-line"></i>
                    </div>
                    <h3>{{$tr->translate('Email Address')}}</h3>
                    <p><a href="mailto:{{setting('site.email')}}">{{setting('site.email')}}</a></p>
                </div>
            </div>

            <div class="col-lg-3 col-md-6">
                <div class="contact-information-card">
                    <div class="icon">
                        <i class="ri-phone-line"></i>
                    </div>
                    <h3>{{$tr->translate('Phone Number')}}</h3>
                    <p><a href="tel:{{setting('site.phone')}}">{{$tr->translate(setting('site.phone'))}}</a></p>
                </div>
            </div>

            <div class="col-lg-3 col-md-6">
                <div class="contact-information-card">
                    <div class="icon">
                        <i class="ri-time-line"></i>
                    </div>
                    <h3>{{$tr->translate('Working Hours')}}</h3>
                    <p>{{$tr->translate('Alawyas')}}</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Contact Information Area -->

<!-- Start Contact Area -->
<div class="contact-area pb-100">
    <div class="container">
        <div class="section-title">
            <h2>{{$tr->translate('Get In Touch')}}</h2>
        </div>
     
        
        
        <form class="contactForm" class="col"  action="{{ route('contactform.store') }}" method="POST">
            @if(Session::has('success'))
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
                                <option value="{{$service->title}}">{{$service->title}}</option>
                            @endforeach
                            
        
                        </select>
                        @if ($errors->has('type'))
                        <span class="text-danger">{{ $errors->first('type') }}</span>
                       @endif
                    </div>
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="form-group">
                        <label>{{$tr->translate('Your Name *')}}</label>
                        <input value="{{ old('name') }}" type="text" name="name" id="name" class="form-control" placeholder="{{$tr->translate('Eg: Thomas Adison')}}"  data-error="Please enter your name">
                        <div class="help-block with-errors">
                            @if ($errors->has('name'))
                             <span class="text-danger">{{ $errors->first('name') }}</span>
                            @endif
                        </div>
                        
                    </div>
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="form-group">
                        <label>{{$tr->translate('Email *')}}</label>
                        <input value="{{ old('email') }}" type="email" name="email" id="email" class="form-control" placeholder="{{$tr->translate('Eg: example@brizdeck.com')}}"  data-error="Please enter your email">
                        <div class="help-block with-errors">
                            @if ($errors->has('email'))
                                <span class="text-danger">{{ $errors->first('email') }}</span>
                            @endif
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="form-group">
                        <label>{{$tr->translate('Phone *')}}</label>
                        <input value="{{ old('phone') }}" type="text" name="phone" id="phone_number" placeholder="{{$tr->translate('Enter your phone number')}}"  data-error="Please enter your number" class="form-control">
                        <div class="help-block with-errors">
                            @if ($errors->has('phone'))
                                <span class="text-danger">{{ $errors->first('phone') }}</span>
                            @endif
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="form-group">
                        <label>{{$tr->translate('Subject *')}}</label>
                        <input value="{{ old('subject') }}" type="text" name="subject" id="msg_subject" placeholder="{{$tr->translate('Enter your subject')}}" class="form-control"  data-error="Please enter your subject">
                        <div class="help-block with-errors">
                            @if ($errors->has('subject'))
                                <span class="text-danger">{{ $errors->first('subject') }}</span>
                             @endif
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12">
                    <div class="form-group">
                        <label>{{$tr->translate('Your Message')}}</label>
                        <textarea value="{{ old('message') }}" name="message" class="form-control" id="message" placeholder="{{$tr->translate('Type your message')}}" cols="30" rows="6"  data-error="Write your message"></textarea>
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
                        <label for="test1">{{$tr->translate('Accept')}} <a href="{{route('website.terms')}}">{{$tr->translate('Terms Of Services')}}</a> {{$tr->translate('And')}} <a href="{{route('website.privacy')}}">{{$tr->translate('Privacy Policy.')}}</a></label>
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