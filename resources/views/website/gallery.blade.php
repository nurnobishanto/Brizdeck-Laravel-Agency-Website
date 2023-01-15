@extends('layouts.website')
@section('content')
    <!-- Start Page Banner Area -->
    <div class="page-banner-area">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-6 col-md-6">
                    <div class="page-banner-content" data-aos="fade-right" data-aos-delay="50" data-aos-duration="500"
                        data-aos-once="true">
                        <h2>Gallery</h2>

                        <ul>
                            <li>
                                <a href="{{ route('website') }}">Home</a>
                            </li>
                            <li>Gallery</li>
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
    <div class="case-study-details-area pt-100 pb-100">
        <div class="container">
            <div class="case-study-details-desc">
                @foreach ($galleries as $item)
                    <div class="blocks-case-study-item">
                        <h4>{{ $item->name }}</h4>
                        <span>
                            <i class="ri-map-pin-line"></i> {{ $item->location }}
                            <i class="ri-calendar-2-line"></i> {{ $item->date }}
                        </span>
                        <div class="row justify-content-center">
                            @if ($item->gallery)
                                @foreach (json_decode($item->gallery, true) as $image)
                                    <div class="col-lg-4 col-md-6">
                                        <div class="image">
                                            <img src="{{ Voyager::image($image) }}" alt="{{ $item->name }}">
                                        </div>
                                    </div>
                                @endforeach
                            @endif

                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
@endsection
