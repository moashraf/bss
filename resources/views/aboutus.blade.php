@extends('master')

@section('content')
                    <div class="wrap_about"><!--Start wrap home-->

            <!--============ Start about_banner ============-->
            <section class="about_banner">
                <div class="overlay"><!--start overlay-->
                    <div class="container"><!--start container-->
                        <div class="banner_info wow fadeInLeft" data-wow-duration="2s">
                            <h2>عنا</h2>
                            <p>لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل.</p>
                        </div>
                    </div><!--End container-->
                </div><!--End overlay-->
            </section>
            <!--============ End about_banner ============-->
            
            <!--============ Start about_us ============-->
            <section class="about_us text-center">
                <div class="container">
                    <section class="about_us">
                        <h2>من نحن</h2>
                                               <p>
                            في المركز المصري لعلاج الاورام ،حالة المريض بالكامل تكون أمام أعيننا وتحت رعايتنا ،فنعطي بإذن الله أفضل نتائج علاجية ممكنة تؤدي الى الشفاء والمتابعة بعد الشفاء لمواجهة ارتداد المرض مرة اخرى ،وذلك من خلال المتابعة الدورية المنزلية لمرضى الأورام ..
ايضا يهتم المركز المصري لعلاج الاورام بوقاية المرضى المحتمل تعرضهم لمرض السرطان من خلال برامج الفحص الدوري لكافة أنواع الأورام ،من اجل الاكتشاف المبكر للمرض ،حيث تبلغ نسبة الشفاء من السرطان ،خاصة “سرطان الثدي” 80% ،وتزداد النسبة الى 100% إذا تم اكتشافه مبكراً .
                        </p>
                    </section>
                </div>
            </section>
            <!--============ End about_us ============-->
            
            <!--============ Start testimonial ============-->
            <section class="testi">
                <div class="overlay">
                    <div class="container"><!--Start Container-->
                        <div class="row"><!--Start row-->
                            
                            <div class="col-xs-12">
                                <!--============ Start our-team ============-->
                                <section class="our-team">

                                        <h3 class="text-center">اراء العملاء</h3>

                                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                            <!-- Indicators -->
                                            <ol class="carousel-indicators">
                                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                                            </ol>

                                            <!-- Wrapper for slides -->
                                            <div class="carousel-inner" role="listbox">
 					 @foreach($Review as $Review_val)


                                                <div class="item <?php  if($Review_val->id ==1){echo('active');} ?> ">
                                                    <div class="item-info">
                                                        <p> {{$Review_val->Reviews_text}} </p>
                                                        <div class="item-name">
 <img src="{{'http://localhost/laravel/storage/app/public/'.$Review_val->Customer_img}} " alt="">
                                  <h4> {{$Review_val->Customer_name}}    </h4>
                                                            <span> {{$Review_val->Customer_position}} </span>
                                                        </div>
                                                    </div>
                                                </div>
                                                @endforeach

                                            </div>
                                        </div>

                                </section>
                                <!--============ End our-team ============-->
                            </div>
                            
                        </div><!--End row-->
                    </div><!--End Container-->
                </div>
            </section>
            <!--============ End testimonial ============-->
            
            <!--============ Start gallery ============-->
            <section class="gallery">
                
            </section>
            <!--============ End gallery ============-->
            
            <!--============ Start our_doctors ============-->
            <section class="our_doctors our_doctors_about">
                <div class="container"><!--Start container-->
                    <div class="heading text-center">
                        <h2>اطبائنا</h2>
                        <p>لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص </p>
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
                   @endsection