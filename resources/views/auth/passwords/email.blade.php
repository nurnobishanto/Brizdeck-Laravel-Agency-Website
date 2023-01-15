@extends('layouts.website')

@section('content')
    <!-- Start Page Banner Area -->
    <div class="page-banner-area">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-6 col-md-6">
                    <div class="page-banner-content" data-aos="fade-right" data-aos-delay="50" data-aos-duration="500"
                        data-aos-once="true">
                        <h2>Forgot Password</h2>

                        <ul>
                            <li>
                                <a href="{{ route('home') }}">Home</a>
                            </li>
                            <li>Forgot Password</li>
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

    <!-- Start Forgot Password Area -->
    <div class="forgot-password-area ptb-100">
        <div class="container">
            <div class="forgot-password-form">
                <h2>Forgot Password</h2>
                @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                @endif

                <form method="POST" action="{{ route('password.email') }}">
                    @csrf
                    <div class="form-group">
                        <input id="email" type="email" class="form-control @error('email') is-invalid @enderror"
                            name="email" value="{{ old('email') }}" required autocomplete="email" autofocus placeholder="Enter your email">

                        @error('email')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                       
                    </div>

                    <button type="submit" class="default-btn">
                        {{ __('Send Password Reset Link') }}
                    </button>
                </form>
            </div>
        </div>
    </div>
    <!-- End Forgot Password Area -->
@endsection
