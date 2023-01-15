<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" type="image/png" href="{{ Voyager::image(setting('site.favicon')) }}">
    <!-- Links of CSS files -->
    <link rel="stylesheet" href="{{ asset('website') }}/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{ asset('website') }}/assets/css/aos.css">
    <link rel="stylesheet" href="{{ asset('website') }}/assets/css/animate.min.css">
    <link rel="stylesheet" href="{{ asset('website') }}/assets/css/meanmenu.css">
    <link rel="stylesheet" href="{{ asset('website') }}/assets/css/remixicon.css">
    <link rel="stylesheet" href="{{ asset('website') }}/assets/css/flaticon.css">
    <link rel="stylesheet" href="{{ asset('website') }}/assets/css/odometer.min.css">
    <link rel="stylesheet" href="{{ asset('website') }}/assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="{{ asset('website') }}/assets/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="{{ asset('website') }}/assets/css/magnific-popup.min.css">
    <link rel="stylesheet" href="{{ asset('website') }}/assets/css/progresscircle.min.css">
    <link rel="stylesheet" href="{{ asset('website') }}/assets/css/style.css">
    <link rel="stylesheet" href="{{ asset('website') }}/assets/css/navbar.css">
    <link rel="stylesheet" href="{{ asset('website') }}/assets/css/footer.css">
    <link rel="stylesheet" href="{{ asset('website') }}/assets/css/responsive.css">
    <!-- CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <!-- Share JS -->
    <script src="{{ asset('js/share.js') }}"></script>


    {!! app('seotools')->generate() !!}

    
    <style>
        .contactForm {
            max-width: 1050px;
            margin: auto;
        }

        .contactForm .form-group {
            margin-bottom: 25px;
        }

        .contactForm .form-cookies-consent a {
            color: var(--main-color);
        }


        a {
            text-decoration: none;
        }

    </style>
    
    <meta name="facebook-domain-verification" content="gfdfk58f0rgteqplz6kdm6msm53uex" />
</head>

<body>
    <!-- Messenger Chat Plugin Code -->
    <div id="fb-root"></div>

    <!-- Your Chat Plugin code -->
    <div id="fb-customer-chat" class="fb-customerchat">
    </div>

    <script>
        var chatbox = document.getElementById('fb-customer-chat');
        chatbox.setAttribute("page_id", "103273945496092");
        chatbox.setAttribute("attribution", "biz_inbox");
    </script>

    <!-- Your SDK code -->
    <script>
        window.fbAsyncInit = function() {
            FB.init({
                xfbml: true,
                version: 'v13.0'
            });
        };

        (function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s);
            js.id = id;
            js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>
    <!-- Start Preloader Area -->
    <div class="preloader">
        <div class="d-table">
            <div class="d-table-cell">
                <div class="lds-spinner">
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                    <div></div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Preloader Area -->


    <div class="alert alert-warning" role="alert">
        This website under construction <a href="https://www.facebook.com/brizdeck.official" class="alert-link">Contact with us</a>. Give it a click if you like.
      </div>
    @include('include.navbar')
    @yield('content')
    @include('include.footer')

    <!-- Start Go Top Area -->
    <div class="go-top">
        <i class="ri-arrow-up-s-line"></i>
    </div>
    <!-- End Go Top Area -->

    <!-- Links of JS files -->
    <script data-cfasync="false" src=""></script>

    <script src="{{ asset('website') }}/assets/js/jquery.min.js"></script>
    <script src="{{ asset('website') }}/assets/js/bootstrap.bundle.min.js"></script>
    <script src="{{ asset('website') }}/assets/js/jquery.meanmenu.js"></script>
    <script src="{{ asset('website') }}/assets/js/owl.carousel.min.js"></script>
    <script src="{{ asset('website') }}/assets/js/jquery.appear.js"></script>
    <script src="{{ asset('website') }}/assets/js/odometer.min.js"></script>
    <script src="{{ asset('website') }}/assets/js/jquery.magnific-popup.min.js"></script>
    <script src="{{ asset('website') }}/assets/js/TweenMax.min.js"></script>
    <script src="{{ asset('website') }}/assets/js/aos.js"></script>
    <script src="{{ asset('website') }}/assets/js/progresscircle.min.js"></script>
    <script src="{{ asset('website') }}/assets/js/jquery.ajaxchimp.min.js"></script>
    <script src="{{ asset('website') }}/assets/js/form-validator.min.js"></script>
    <script src="{{ asset('website') }}/assets/js/contact-form-script.js"></script>
    <script src="{{ asset('website') }}/assets/js/wow.min.js"></script>
    <script src="{{ asset('website') }}/assets/js/main.js"></script>


</body>


</html>
