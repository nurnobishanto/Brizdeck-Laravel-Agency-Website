@extends('layouts.website')

@section('content')
    <!-- Start Page Banner Area -->
    <div class="page-banner-area">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-6 col-md-6">
                    <div class="page-banner-content" data-aos="fade-right" data-aos-delay="50" data-aos-duration="500"
                        data-aos-once="true">
                        <h2>Register</h2>

                        <ul>
                            <li>
                                <a href="{{ route('website') }}">Home</a>
                            </li>
                            <li>Register</li>
                        </ul>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6">
                    <div class="page-banner-image" data-speed="0.08" data-revert="true">
                        <img src="{{ asset('website') }}/assets/images/page-banner-image.png" alt="Brizdeck"
                            data-aos="fade-left" data-aos-delay="50" data-aos-duration="500" data-aos-once="true">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Page Banner Area -->

    <!-- Start Register Area -->
    <div class="register-area ptb-100">
        <div class="container">
            <div class="register-form">
                <h2>Create Your Account</h2>
                <p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore.</p>

                <form method="POST" action="{{ route('register') }}">
                    @csrf
                    <div class="form-group">
                        <label for="name">User {{ __('Name') }}</label>
                        <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name"
                            value="{{ old('name') }}" required autocomplete="name" autofocus placeholder="User name">

                        @error('name')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>

                    <div class="form-group">
                        <label for="email">{{ __('Email Address') }}</label>

                        <input id="email" type="email" class="form-control @error('email') is-invalid @enderror"
                            name="email" value="{{ old('email') }}" required autocomplete="email"
                            placeholder="Email address">

                        @error('email')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>

                    <div class="form-group">
                        <label for="Password">{{ __('Password') }}</label>

                        <input id="password" type="password" placeholder="Password"
                            class="form-control @error('password') is-invalid @enderror" name="password" required
                            autocomplete="new-password">

                        @error('password')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>

                    <div class="form-group">
                        <label for="password-confirm">{{ __('Confirm Password') }}</label>
                        <input id="password-confirm" type="password" class="form-control" placeholder="Confirm Password"
                            name="password_confirmation" required autocomplete="new-password">
                    </div>

                    <p class="description">The password should be at least eight characters long. To make it stronger,
                        use upper and lower case letters, numbers, and symbols like ! " ? $ % ^ & )</p>


                    <button type="submit" class="default-btn">
                        {{ __('Register') }}
                    </button>

                    <div class="account-text">
                        <span>Already have an account? <a href="{{ route('login') }}">Login</a></span>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- End Register Area -->
@endsection
