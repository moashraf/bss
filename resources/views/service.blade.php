
            @extends('master')

@section('content')
                    <div class="wrap_service"><!--Start wrap home-->

            <!--============ Start service_banner ============-->
            <section class="service_banner">
                <div class="overlay"><!--Start overlay-->
                    <div class="container">
                        
                        <div class="row">
                            
                            <div class="col-xs-12">
                                <div class="banner">
                                    <h3>خدماتنا</h3>
                                    <p>لوريم ايبسوم هو نص تجريبى لاختبار النص النهائى من حيث الشكل واللون.</p>
                                </div>
                            </div>
                            
                        </div>
                        
                    </div>
                </div><!--End overlay-->
            </section>
            <!--============ Start service_banner ============-->
            
            <!--============ Start service ============-->
            <section class="service">
                <div class="container"><!--Start Container-->
                    <div class="service_heading">
                        <h2>الخدمات
                            <hr>
                        </h2>
                    </div>
                    <div class="row"><!--Start row-->
                    
                                                   @foreach($Service as $Service_val)

                        
                         <div class="col-md-3 col-sm-6 col-xs-12">
                            
                            <div class="single_service wow flash" data-wow-duration="2s">
                                <img src="{{'http://localhost/laravel/storage/app/public/'.$Service_val->services_img}}" alt=""     width="60"  height="60"        >
                                <h3> {{$Service_val->service_tit}}</h3>
                                <p> {{$Service_val->services_description}} </p>
                            </div>
                        </div>
                        

                                                @endforeach

                    </div><!--End row-->
                </div><!--End Container-->
            </section>
            <!--============ End service ============-->
            
            <!--============ Start service_end ============-->
            <section class="service_end">
                <div class="container"><!--Start container-->
                    <div class="row"><!--Start row-->
                        
                        <div class="col-xs-12">
                            <div class="flag">
                                <p>
                                    <i class="fa fa-stethoscope fa-3x"></i>
                                  لاتترددى فى التواصل معنا فى اى وقت, لمساعدتك, او لتحديد موعد مع المركز, نحن فى خدمتك  


                                </p>
                                <a href="{{ url('/contact') }}">تواصل معنا</a>
                            </div>
                        </div>
                        
                    </div><!--End row-->
                </div><!--End container-->
            </section>
                         @endsection
