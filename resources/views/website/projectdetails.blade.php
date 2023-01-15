@extends('layouts.website')
@section('content')
    <!-- Start Page Banner Area -->
    <div class="page-banner-area">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-6 col-md-6">
                    <div class="page-banner-content" data-aos="fade-right" data-aos-delay="50" data-aos-duration="500"
                        data-aos-once="true">
                        <h2>{{ $tr->translate($project->title) }}</h2>

                        <ul>
                            <li>
                                <a href="{{ route('website') }}">Home</a>
                            </li>
                            <li>{{ $project->title }}</li>
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

    <!-- Start Case Study Details Area -->
    <div class="case-study-details-area pt-100 pb-100">
        <div class="container">
            <div class="case-study-details-desc">
                <div class="case-study-details-header">
                    <div class="row justify-content-center align-items-center">
                        <div class="col-lg-8 col-md-12">
                            <h3>{{ $tr->translate($project->title) }}</h3>
                            <p>{{ $tr->translate($project->excerpt) }}</p>
                        </div>

                        <div class="col-lg-4 col-md-12">
                            <ul class="case-study-information">
                                <li>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="content">
                                            <h5>Client:</h5>
                                            <span>{{ $project->client }}</span>
                                        </div>
                                        <div class="content">
                                            <h5>Date:</h5>
                                            <span>{{ $project->date }}</span>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="content">
                                            <h5>Website:</h5>
                                            <span><a href="{{ $project->src_url }}"
                                                    target="_blank">{{ $project->src_name }}</a></span>
                                        </div>
                                        <div class="content">
                                            <h5>Category:</h5>
                                            <span>{{ $project->category }}</span>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="case-study-details-image">
                    <img src="{{ voyager::image($project->thumbnail) }}" alt="{{ $project->title }}">
                </div>
                <div class="case-study-details-content">
                    {!! $tr->translate($project->body) !!}
               
                

                    <div class="row justify-content-center case-study-circlechart">
                        @foreach ($project->skills as $skill)
                            <div class="col-lg-3 col-md-6">
                                <div class="circlechart" data-percentage="{{ $skill->percent }}"></div>
                                <span>{{ $tr->translate($skill->name) }}</span>
                            </div>
                        @endforeach

                    </div>
                </div>
                <div class="case-study-details-content">
                    @if ($project->quote)
                        <div class="quote-content">
                            <i class="flaticon-straight-quotes"></i>
                            <p>{{ $project->quote }}</p>
                            <span>By <a href="{{ $project->quote_url }}" target="_blank" rel="noopener noreferrer">
                                    {{ $project->quote_by }}</a></span>
                        </div>
                    @endif

                </div>
                <div class="blocks-case-study-item">
                    <h4>{{$tr->translate("Project Images")}}</h4>
                    <div class="row justify-content-center">
                        @if ($project->images)
                            @foreach (json_decode($project->images, true) as $image)
                                <div class="col-lg-4 col-md-6">
                                    <div class="image">
                                        <img src="{{ Voyager::image($image) }}" alt="Oleev">
                                    </div>
                                </div>
                            @endforeach
                        @endif

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Case Study Details Area -->

    <!-- Start Case Study Area -->
    <div class="case-study-area-without-color bg-F9F5F4 pt-100 pb-75">
        <div class="container">
            <div class="section-title">
                <span>{{$tr->translate("Related Projects")}}</span>
                <h2>{{$tr->translate($portfolio_section->heading)}}</h2>
                <p>{{$tr->translate($portfolio_section->description)}}</p>
            </div>

            <div class="row justify-content-center">
                @foreach ($projects as $item)
                    <div class="col-lg-6 col-md-6">
                        <div class="single-case-study-card">
                            <a href="{{ Route('website.project', ['slug' => $item->slug]) }}"><img
                                    src="{{ Voyager::image($item->thumbnail) }}" alt="{{ $item->title }}"></a>

                            <div class="case-study-content">
                                <h3>
                                    <a
                                        href="{{ Route('website.project', ['slug' => $item->slug]) }}">{{ $tr->translate($item->title) }}</a>
                                </h3>
                                <a href="{{ Route('website.project', ['slug' => $item->slug]) }}"
                                    class="case-btn"><i class="ri-arrow-right-line"></i></a>
                            </div>
                        </div>
                    </div>
                @endforeach

            </div>
        </div>
    </div>
    <!-- End Case Study Area -->
@endsection
