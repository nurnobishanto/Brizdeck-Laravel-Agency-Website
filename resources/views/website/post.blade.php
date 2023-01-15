@extends('layouts.website')

@section('content')

    <!-- Start Page Banner Area -->
    <div class="page-banner-area">
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-6 col-md-6">
                    <div class="page-banner-content" data-aos="fade-right" data-aos-delay="50" data-aos-duration="500"
                        data-aos-once="true">
                        <h2>{{ $tr->translate($post->title) }}</h2>

                        <ul>
                            <li>
                                <a href="{{ Route('website') }}">Home</a>
                            </li>
                            <li>{{ $tr->translate($post->title) }}</li>
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

    <!-- Start Blog Details Area -->
    <div class="blog-details-area ptb-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-12">
                    <div class="blog-details-desc">
                        <h3>{{ $tr->translate($post->title) }}</h3>
                        <div class="article-info-item d-flex justify-content-between align-items-center">
                            <div class="info-content">

                                @if ($post->authorId)
                                    <img src="{{ Voyager::image($post->authorId->avatar) }}" class="rounded-circle"
                                        alt="{{ $post->user->name }}">
                                    <h4>By <a
                                            href="{{ Route('website.author', ['slug' => $post->user->slug]) }}">{{ $tr->translate($post->user->name) }}</a>
                                    </h4>
                                @endif
                                <span> {{ $tr->translate($post->created_at->format('M d, Y')) }}</span>
                            </div>
                            {!!$shareComponent!!}
                        </div>
                        <div class="article-image">
                            @if ($post->image)
                                <img src="{{ Voyager::image($post->image) }}" alt="{{ $tr->translate($post->title) }}<">
                            @endif


                        </div>
                        <div class="article-content">
                            {!! $tr->translate($post->body) !!}
                        </div>
                      
                        <div class="article-tags">
                            @foreach ($post->tags as $tag)
                                <a href="{{ Route('website.tag', ['slug' => $tag->slug]) }}">{{ $tag->name }}
                                    ({{ $tag->posts->count() }})
                                </a>
                            @endforeach
                        </div>
                        
                        

                        <p><i class="ri-message-2-line"> </i> {{ $post->comments->count() }} Comments | <i
                                class="ri-eye-fill"> </i>{{ $post->view_count }} Views</p>
                        @foreach ($comments as $comment)
                            <div class="article-info-item d-flex justify-content-between align-items-center">
                                <div class="info-content">

                                    @if ($comment->user)
                                        <img src="{{ Voyager::image($comment->user->avatar) }}" class="rounded-circle"
                                            alt="{{ $comment->user->name }}">
                                        <h4>By {{ $comment->user->name }}
                                            <span>{{ $comment->created_at->format('M d, Y') }}</span>
                                        </h4>
                                    @endif
                                    <p>{{ $comment->comment }} </p>

                                </div>

                            </div>
                        @endforeach

                        {{ $comments->links('vendor.pagination.custom') }}

                        <div class="article-leave-comment">

                            @if (Auth::user())
                                <h3>Leave A Reply</h3>
                                @php
                                    $currentuser = Auth::id();
                                @endphp

                                <form action="{{ route('comment.store') }}" method="POST">
                                    @if (Session::has('success'))
                                        <div class="alert alert-success">
                                            {{ Session::get('success') }}
                                            @php
                                                Session::forget('success');
                                            @endphp
                                        </div>
                                    @endif
                                    @csrf
                                    <div class="row justify-content-center">
                                        <div class="col-lg-6 col-md-12">
                                            <div class="form-group">
                                                <input required hidden type="number" value="{{ Auth::user()->id }}"
                                                    name="user_id">
                                                <input required hidden type="number" value="{{ $post->id }}"
                                                    name="post_id">
                                            </div>
                                        </div>
                                        <div class="col-lg-12 col-md-12">
                                            <div class="form-group">
                                                <label>Your Comment *</label>
                                                <textarea required name="comment" class="form-control" placeholder="Type your comment"></textarea>
                                            </div>
                                        </div>
                                        <div class="col-lg-12 col-md-12">


                                            <button type="submit" class="default-btn">Post A Comment</button>
                                        </div>
                                    </div>
                                </form>
                            @else
                                <h4>You must be <a class="text-danger" href="" target="_blank">logged</a> in to comment
                                    on this post. <a class="text-danger" href="" target="_blank">Login</a> or <a
                                        class="text-danger" href="" target="_blank">Register</a> </h4>
                            @endif


                        </div>
                    </div>
                </div>

                {{-- Sidebar --}}
                @include('include.sidebar')

            </div>
        </div>
    </div>
    <!-- End Blog Details Area -->
@endsection
