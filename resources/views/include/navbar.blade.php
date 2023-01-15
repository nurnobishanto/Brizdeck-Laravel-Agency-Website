 <!-- Start Navbar Area -->
 <div class="navbar-area navbar-style-two">
     <div class="main-responsive-nav">
         <div class="container">
             <div class="main-responsive-menu">
                 <div class="logo">
                     <a href="{{ route('website') }}">
                         @if (setting('site.logo'))
                             <img style="max-width: 100px" src="{{ Voyager::image(setting('site.logo')) }}"
                                 alt="{{ setting('site.title') }}">
                         @else
                             <span class="text-danger">{{ setting('site.title') }}</span>
                         @endif
                     </a>
                 </div>
             </div>
         </div>
     </div>

     <div class="main-navbar">
         <div class="container-fluid">
             <nav class="navbar navbar-expand-md navbar-light">
                 <a class="navbar-brand" href="{{ route('website') }}">
                     @if (setting('site.logo'))
                         <img style="max-width: 120px" src="{{ Voyager::image(setting('site.logo')) }}"
                             alt="{{ setting('site.title') }}">
                     @else
                         <span class="text-danger">{{ setting('site.title') }}</span>
                     @endif

                 </a>

                 <div class="collapse navbar-collapse mean-menu" id="navbarSupportedContent">
                     {{ menu('Website', 'menu.headermenu') }}


                     <div class="others-options d-flex align-items-center">
                         <div class="option-item">
                             <form class="search-box" method="GET" action="{{ route('website') }}">
                                 <input name="search" type="text" class="input-search" placeholder="Search...">
                                 <button type="submit"><i class="ri-search-line"></i></button>
                             </form>
                         </div>

                         <div class="option-item">
                             <div class="dropdown language-option">
                                 <button class="dropdown-toggle" type="button" data-bs-toggle="dropdown"
                                     aria-haspopup="true" aria-expanded="false">
                                     <i class="ri-earth-line"></i>
                                     <span class="lang-name"></span>
                                 </button>
                                 <div class="dropdown-menu language-dropdown-menu">
                                     @if (Session::get('lang') == 'bn')
                                         <a class="dropdown-item" href="{{ Route('lang', ['lang' => 'bn']) }}">
                                             <img src="{{ asset('website') }}/assets/images/bd.png" alt="flag">
                                             বাংলা
                                         </a>
                                         <a class="dropdown-item" href="{{ Route('lang', ['lang' => 'en']) }}">
                                             <img src="{{ asset('website') }}/assets/images/uk.png" alt="flag">
                                             English
                                         </a>
                                     @else
                                         <a class="dropdown-item" href="{{ Route('lang', ['lang' => 'en']) }}">
                                             <img src="{{ asset('website') }}/assets/images/uk.png" alt="flag">
                                             English
                                         </a>

                                         <a class="dropdown-item" href="{{ Route('lang', ['lang' => 'bn']) }}">
                                             <img src="{{ asset('website') }}/assets/images/bd.png" alt="flag">
                                             বাংলা
                                         </a>
                                     @endif

                                 </div>
                             </div>
                         </div>

                         <div class="option-item">
                             <a href="{{ route('website.contact') }}" class="default-btn">Contact Now</a>
                         </div>
                     </div>
                 </div>
             </nav>
         </div>
     </div>

     <div class="others-option-for-responsive">
         <div class="container">
             <div class="dot-menu">
                 <div class="inner">
                     <div class="circle circle-one"></div>
                     <div class="circle circle-two"></div>
                     <div class="circle circle-three"></div>
                 </div>
             </div>

             <div class="container">
                 <div class="option-inner">
                     <div class="others-options d-flex align-items-center">
                         <div class="option-item">
                             <form class="search-form" method="GET" action="{{ route('website') }}">
                                 <input name="search" type="search" class="search-field" placeholder="Search...">
                                 <button type="submit"><i class="ri-search-line"></i></button>
                             </form>

                         </div>

                         <div class="option-item">
                             <div class="dropdown language-option">
                                 <button class="dropdown-toggle" type="button" data-bs-toggle="dropdown"
                                     aria-haspopup="true" aria-expanded="false">
                                     <i class="ri-earth-line"></i>
                                     <span class="lang-name"></span>
                                 </button>
                                 <div class="dropdown-menu language-dropdown-menu">
                                     @if (Session::get('lang') == 'bn')
                                         <a class="dropdown-item" href="{{ Route('lang', ['lang' => 'bn']) }}">
                                             <img src="{{ asset('website') }}/assets/images/bd.png" alt="flag">
                                             বাংলা
                                         </a>
                                         <a class="dropdown-item" href="{{ Route('lang', ['lang' => 'en']) }}">
                                             <img src="{{ asset('website') }}/assets/images/uk.png" alt="flag">
                                             English
                                         </a>
                                     @else
                                         <a class="dropdown-item" href="{{ Route('lang', ['lang' => 'en']) }}">
                                             <img src="{{ asset('website') }}/assets/images/uk.png" alt="flag">
                                             English
                                         </a>

                                         <a class="dropdown-item" href="{{ Route('lang', ['lang' => 'bn']) }}">
                                             <img src="{{ asset('website') }}/assets/images/bd.png" alt="flag">
                                             বাংলা
                                         </a>
                                     @endif
                                 </div>
                             </div>
                         </div>

                         <div class="option-item">
                             <a href="{{ route('website.contact') }}" class="default-btn">Contact Now</a>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>
 </div>
 <!-- End Navbar Area -->
