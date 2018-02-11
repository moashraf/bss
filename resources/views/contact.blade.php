
      @extends('master')

@section('content')
                  <div class="wrap_contact"><!--Start wrap home-->
        
            <!--============ Start contact_banner ============-->
            <section class="contact_banner">
                <div class="overlay"><!--start overlay-->
                    <div class="container"><!--start container-->
                        <div class="contact_info">
                            <h2>اتصل بنا</h2>
                            <p>لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل.</p>
                        </div>
                    </div><!--End container-->
                </div><!--End overlay-->
            </section>
            <!--============ End contact_banner ============-->
            
            <!--============ Start contact_core ============-->
            <section class="contact_core">
                <div class="container-fluid"><!--Start container-->
                    <div class="row"><!--Start row-->

                        <div class="col-sm-6 col-xs-12">
                            <div class="contact_img wow fadeInRight" data-wow-duration="2s">
                                <form action="" method="">
                                    <input type="text" placeholder="اكتب اسمك">
                                    <input type="text" placeholder="الموضوع">
                                    <input type="email" placeholder="بريدك الالكترونى">
                                    <input type="tel" placeholder="رقم الهاتف">
                                    <textarea placeholder="رسالتك"></textarea>
                                    <input type="submit" value="ارسل">
                                </form>
                            </div>
                        </div>

                        <div class="col-sm-6 col-xs-12">
                            <div class="contsct_form wow fadeInLeft" data-wow-duration="2s">
                                <h3>تواصل معنا</h3>
                                <p> تواصل معنا علي مدار اليوم  </p>
                                <ul class="details list-unstyled">
                                   
                                    <li>
                                        <i class="fa fa-phone fa-fw"></i>
              {{ setting('site.phone_phone') }} 
                                    </li>
                                    <li>
                                        <i class="fa fa-envelope fa-fw"></i>
  {{ setting('site.email_email') }}                                      </li>
                                    <li>
                                        <i class="fa fa-home fa-fw"></i>
{{ setting('site.location_location') }}                                       </li>
                                    <li>
                                        <a href="{{  setting('site.getmap')  }}   " target="_blank">
                                            <i class="fa fa-globe fa-fw"></i>
                                            Get Map
                                        </a>
                                    </li>
                                </ul>
                                <ul class="socials list-unstyled list-inline">
                                    <li>
                                        <a   target="_blank"  href="{{ setting('site.facebook') }}   ">
                                            <i class="fa fa-facebook fa-fw"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a   target="_blank" href="{{ setting('site.youtube') }}   ">
                                            <i class="fa fa-youtube fa-fw"></i>
                                        </a>
                                    </li>
                                    
                                    <li>
                                        <a   target="_blank" href="{{  setting('site.linkedin')}}   ">
                                            <i class="fa fa-linkedin fa-fw"></i>
                                        </a>
                                    </li>
                                     
                                </ul>
                            </div>
                        </div>

                    </div><!--End row-->
                </div><!--End container-->    
            </section>
          
                      @endsection
