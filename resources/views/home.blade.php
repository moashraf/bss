@extends('master')

@section('content')
            

            
            <!--============ Start slider ============-->
            <section class="slider">
                <div class="container"><!--Start container-->
                    <div class="row"><!--Start row-->
                        
                        <div class="col-sm-6 col-xs-12">
                            <div class="intro wow fadeInRight">
                                <h1> {{ setting('site.title') }} </h1>
                                <p> {{ setting('site.description') }} </p>
                            </div>
                        </div>
                        <div class="col-sm-6 col-xs-12"></div>
                        
                    </div><!--End row-->
                </div><!--End container-->
            </section>
            <!--============ End slider ============-->
            
            <!--============ Start contact_info ============-->
            <section class="contact_info">
                <div class="container"><!--Start container-->
                    <div class="row"><!--Start row-->
                        
                        <div class="col-sm-4 col-xs-12">
                            <div class="media">
                                <div class="media-left">
                                    <a href="#">
                                    <i class="fa fa-mobile fa-fw"></i>
                                </a>
                                </div>
                                    <div class="media-body">
                                    <h4 class="media-heading">اتصل بنا</h4>
                                    <p>    
              {{ setting('site.phone_phone') }} 
                                    </p>    
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-xs-12">
                            <div class="media">
                                <div class="media-left">
                                    <a href="#">
                                    <i class="fa fa-envelope fa-fw"></i>
                                </a>
                                </div>
                                    <div class="media-body">
                                    <h4 class="media-heading">راسلنا</h4>
                                    <p>    
 {{ setting('site.email_email') }}                                        </p>    
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-xs-12">
                            <div class="media">
                                <div class="media-left">
                                    <a href="#">
                                    <i class="fa fa-map-marker fa-fw"></i>
                                </a>
                                </div>
                                    <div class="media-body">
                                    <h4 class="media-heading">موقعنا</h4>
                                    <p>    
{{ setting('site.location_location') }}                                        </p>    
                                </div>
                            </div>
                        </div>
                        
                    </div><!--End row-->
                </div><!--End container-->
            </section>
            <!--============ End contact_info ============-->
            
            <!--============ Start dating ============-->
            <section class="dating">
                <div class="container"><!--Start container-->
                    <div class="row"><!--Start row-->
                        
                        <div class="col-sm-4 col-xs-12">
                            <div class="about wow fadeInLeft" data-wow-duration="2s">
                                <h3>
                                    عنا
                                    <hr>
                                </h3>
                                <p> {{ setting('site.description') }} </p>
                                <a href="#">اقرأ المزيد</a>
                            </div>
                        </div>
                        <div class="col-sm-4 col-xs-12">
                            <div class="all_day">
                                <h3>
                                    خدمة 24 ساعه
                                    <hr>
                                </h3>
                                <p> {{ setting('site.24service') }} </p>
                                <a href="#">اقرأ المزيد</a>
                            </div>
                        </div>
                        <div class="col-sm-4 col-xs-12">
                            <div class="opening wow fadeInRight" data-wow-duration="2s">
                                <h3>
                                    مواعيد العمل
                                    <hr>
                                </h3>
                               <?php echo (setting('site.work'));  ?>
                                <a href="#">اقرأ المزيد</a>
                            </div>
                        </div>
                        
                    </div><!--End row-->
                </div>
            </section><!--End container-->
            <!--============ End dating ============-->
            
            <!--============ Start our_doctors ============-->
            <section class="our_doctors">
                <div class="container"><!--Start container-->
                    <div class="heading text-center">
                        <h2>اطبائنا</h2>
                        <p> قائمة الأطباء الاستشاريين والأخصائيين   </p>
                    </div>
                    <div class="row"><!--Start row-->
                                                  @foreach($doctor as $doctor_val)

                        <div class="col-md-4 col-xs-12">
                            <div class="doctor wow fadeInUpBig" data-wow-duration="2s">
                                <img src="http://localhost/laravel/storage/app/public/{{$doctor_val->doctor_img}}" alt="">
                                <div class="doctor_body">
                                    <h3> {{$doctor_val->doctor_name}}</h3>
                                    <p> {{$doctor_val->doctor_description}} </p>
                                    <div class="socials">
                                        <ul class="list-unstyled">
                                            <li>
                                                <a   target="_blank"  href="{{$doctor_val->doctor_facebook}}">
                                                    <i class="fa fa-facebook fa-fw"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a   target="_blank"  href="{{$doctor_val->doctor_twitter}}">
                                                    <i class="fa fa-twitter fa-fw"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a   target="_blank"  href="{{$doctor_val->doctor_instagram}}">
                                                    <i class="fa fa-instagram fa-fw"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                                                @endforeach

                    </div><!--End row-->
 
                </div><!--End container-->
            </section>
            <!--============ End our_doctors ============-->
            
            <!--============ Start services ============-->
            <section class="services">
                <div class="container-fluid"><!--Start container-->
                    <div class="row special_row"><!--Start row-->
                        
                        <div class="col-md-3 col-xs-12 special_col">
                            <div class="services_img">
                                <div class="overlay">
                                    <h2>خدماتنا</h2>
                                </div>
                                <img src="" alt="">
                            </div>
                        </div>
                        
                    @foreach($Service as $Service_val)

                       
                        <div class="col-md-3 col-xs-12" style="    box-shadow: 0 0 15px 3px #fff;
    position: relative;
    z-index: 5;">
                            <div class="single_service five">
                                <div class="single_srvice_body">
                                    <h4>  {{$Service_val->service_tit}} </h4>
                                    <p>  {{$Service_val->services_description}} </p>
                                    <a href="#">التفاصيل</a>
                                </div>
                            </div>
                           
                        </div>
                                                                        @endforeach

                    </div><!--End row-->
                </div><!--End container-->
            </section>
            <!--============ End services ============-->
            
            
             @endsection
