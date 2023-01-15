  <!-- End Footer Area -->
  <footer class="footer-area pt-100">
      <div class="container">
          <div class="row justify-content-center">
              <div class="col-lg-3 col-md-6">
                  <div class="single-footer-widget">
                      <div class="widget-logo">
                          @if (setting('site.footer_logo'))
                              <img src="{{ Voyager::image(setting('site.footer_logo')) }}"
                                  alt="{{ setting('site.title') }}">
                          @endif

                      </div>
                      <p>{{ setting('site.description') }}</p>
                      <ul class="widget-social">
                          @if (setting('site.facebook'))
                              <li>
                                  <a href="{{ setting('site.facebook') }}" target="_blank">
                                      <i class="ri-facebook-fill"></i>
                                  </a>
                              </li>
                          @endif
                          @if (setting('site.twitter'))
                              <li>
                                  <a href="{{ setting('site.twitter') }}" target="_blank">
                                      <i class="ri-twitter-fill"></i>
                                  </a>
                              </li>
                          @endif
                          @if (setting('site.instagram'))
                              <li>
                                  <a href="{{ setting('site.instagram') }}" target="_blank">
                                      <i class="ri-instagram-linr"></i>
                                  </a>
                              </li>
                          @endif
                          @if (setting('site.linkedin'))
                              <li>
                                  <a href="{{ setting('site.linkedin') }}" target="_blank">
                                      <i class="ri-linkedin-linr"></i>
                                  </a>
                              </li>
                          @endif
                      </ul>
                  </div>
              </div>

              <div class="col-lg-3 col-sm-6">
                  <div class="single-footer-widget ps-5">
                      <h3>Useful Link</h3>
                      <div class="row justify-content-center">
                          <div class="col-lg-6 col-sm-6 col-6">
                              {{ menu('footer-link1', 'menu.quick-links') }}
                          </div>
                          <div class="col-lg-6 col-sm-6 col-6">
                              {{ menu('footer-link2', 'menu.quick-links') }}
                          </div>
                      </div>
                  </div>
              </div>

              <div class="col-lg-3 col-sm-6">
                  <div class="single-footer-widget ps-5">
                      <h3>Our Services</h3>
                      {{ menu('footer-services', 'menu.quick-links') }}
                  </div>
              </div>

              <div class="col-lg-3 col-sm-6">
                  <div class="single-footer-widget ps-3">
                      <h3>Contact Information</h3>

                      <ul class="footer-information">
                          @if (setting('site.address'))
                              <li>
                                  <i class="ri-map-pin-line text-light"></i>
                                  {{ setting('site.address') }}
                              </li>
                          @endif
                          @if (setting('site.phone'))
                              <li>
                                  <i class="ri-phone-fill text-light"></i>
                                  <a href="tel:{{ setting('site.phone') }}">{{ setting('site.phone') }}</a>
                              </li>
                          @endif
                          @if (setting('site.email'))
                              <li>
                                  <i class="ri-mail-fill text-light"></i>
                                  <a href="mailto:{{ setting('site.email') }}">{{ setting('site.email') }}</a>
                              </li>
                          @endif
                          
                      </ul>
                  </div>
              </div>
          </div>
      </div>
      <div class="copyright-area">
          <div class="container">
              <div class="copyright-area-content">
                  <p>
                      {!! setting('site.copyright') !!}

                  </p>
              </div>
          </div>
      </div>
  </footer>
  <!-- End Footer Area -->
