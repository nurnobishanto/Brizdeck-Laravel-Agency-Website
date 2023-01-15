@extends('layouts.website')

@section('content')
    <!-- Start Page Banner Area -->
    <div class="page-banner-area">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-6 col-md-6">
                    <div class="page-banner-content" data-aos="fade-right" data-aos-delay="50" data-aos-duration="500"
                        data-aos-once="true">
                        <h2>Login</h2>

                        <ul>
                            <li>
                                <a href="{{ route('website') }}">Home</a>
                            </li>
                            <li>Login</li>
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
    <!-- Start Login Area -->
    <div class="login-area ptb-100">
        <div class="container">
            <div class="login-form">
                <h2>Login Here</h2>
                <p>Welcome Back, Login To Your Account</p>

                <form method="POST" action="{{ route('login') }}">
                    @csrf
                    <div class="form-group">
                        <label for="email">{{ __('Email Address') }}</label>
                        <input id="email" type="email" class="form-control @error('email') is-invalid @enderror"
                            name="email" value="{{ old('email') }}" required autocomplete="email" autofocus
                            placeholder="User email address">

                        @error('email')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>

                    <div class="form-group">
                        <label for="password">Password</label>
                        <input id="password" type="password" class="form-control @error('password') is-invalid @enderror"
                            name="password" required autocomplete="current-password" placeholder="8-25 character password">

                        @error('password')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror

                    </div>

                    <div class="row align-items-center">
                        <div class="col-lg-6 col-md-6 col-sm-6 remember-me-wrap">
                            <p>
                                <input class="form-check-input" type="checkbox" name="remember" id="remember"
                                    {{ old('remember') ? 'checked' : '' }}>

                                <label class="form-check-label" for="remember">
                                    {{ __('Remember Me') }}
                                </label>
                            </p>
                        </div>

                        <div class="col-lg-6 col-md-6 col-sm-6 lost-your-password-wrap">
                            @if (Route::has('password.request'))
                                <a class="lost-your-password" href="{{ route('password.request') }}">
                                    {{ __('Forgot Your Password?') }}
                                </a>
                            @endif

                        </div>
                    </div>
                    <div>
                        <button type="submit" class="default-btn">
                            {{ __('Login') }}
                        </button>
                    </div>
                    <p class="text-center">Or continue With</p>
                    <a href="{{ url('login/facebook') }}" class="btn btn-social-icon btn-facebook default-btn"><i
                            class="ri-facebook-circle-fill"></i> Facebook</a>
                    <a href="{{ url('login/google') }}" class="btn btn-social-icon btn-facebook default-btn"><i class="ri-google-fill"></i> Google</a>
                    <a href="{{ url('login/github') }}" class="btn btn-social-icon btn-facebook default-btn"><i class="ri-github-fill"></i> github</a>

                    <div class="account-text">

                        <span>Don’t have an account?
                            @if (Route::has('register'))
                                <a href="{{ route('register') }}"
                                    class="ml-4 text-sm text-gray-700 dark:text-gray-500 underline">Register</a>
                            @endif

                        </span>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- End Login Area -->
@endsection
