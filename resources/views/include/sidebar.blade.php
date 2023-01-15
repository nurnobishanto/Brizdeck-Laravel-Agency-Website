<div class="col-lg-4 col-md-12">
    <aside class="widget-area">
        <div class="widget widget_search">
            <form class="search-form" method="GET" action="{{ route('website')}}">
                <input name="search" type="search" class="search-field" placeholder="{{$tr->translate('Search...')}}">
                <button type="submit"><i class="ri-search-line"></i></button>
            </form>
        </div>

        <div class="widget widget_oleev_posts_thumb">
            <h3 class="widget-title">{{$tr->translate('Popular Posts')}}</h3>
            @php
              $position = 0;
             @endphp
            @foreach ($poularpost as $item)
                <article class="item">
                <a href="{{Route('website.post',['slug'=>$item->slug])}}" class="thumb">
                    @if (Voyager::image( $item->image ))
                        <span class="fullimage cover" style="background-image: url({{ Voyager::image( $item->thumbnail('small') )}})" role="img"></span>
                    @endif
                    
                </a>
                <div class="info">
                    <h4 class="title usmall">
                        <a href="{{Route('website.post',['slug'=>$item->slug])}}">{{$tr->translate($item->title)}}</a>
                    </h4>
                    <span>{{$tr->translate($item->created_at->format('M d, Y'))}}</span>
                </div>
                <div class="number">
                    @php
                        $position++;
                    @endphp
                    {{$position}}</div>
            </article>
            @endforeach
        </div>

        <div class="widget widget_explore_topics">
            <h3 class="widget-title">{{$tr->translate('Category Clouds')}}</h3>
            
            <ul class="topics-list">
                @foreach ($allcategories as $category)
                <li>
                    <div class="d-flex justify-content-between align-items-center">
                        <a href="{{Route('website.category',['slug'=>$category->slug])}}"><i class="ri-arrow-right-s-line"></i> {{$tr->translate($category->name)}}</a>
                        <span><a href="{{Route('website.category',['slug'=>$category->slug])}}">({{$tr->translate($category->posts->count())}})</a></span>
                    </div>
                </li>
                    
                @endforeach
            </ul>
        </div>

        <div class="widget widget_tag">
            <h3 class="widget-title">{{$tr->translate('Tag Clouds')}}</h3>
            
            <ul class="tag-list">
                @foreach ($alltags as $tag)
                <li><a href="{{Route('website.tag',['slug'=>$tag->slug])}}">{{$tr->translate($tag->name)}} (<span>{{$tag->posts->count()}}</span>)</a></li>
                @endforeach
            </ul>
        </div>
    </aside>
</div>