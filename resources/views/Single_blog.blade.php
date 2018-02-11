
@extends('master')

@section('content')
           <div class="wrap_post"><!--Start wrap post-->
         
 
<section class="post_banner">
                <div class="container"><!--Start container-->
                    <h3>
                        <i class="fa fa-edit fa-fw"></i>    
{{$Single_blog->title}}                    </h3>
                </div><!--End container-->
            </section>
            <!--============ End post_banner ============-->
            
            <!--============ Start post ============-->
            <section class="post">
                <div class="container"><!--Start container-->
                    <img class="img-responsive center-blog" src="http://localhost/laravel/storage/app/public/{{$Single_blog->image}}  " alt="">
                  <?php echo "$Single_blog->body";   ?>      
                </div><!--End container-->
            </section>
            <!--============ End post ============-->
            
            <!--============ Start to_contact ============-->
            <section class="to_contact">
                <div class="container"><!--Start container-->
                    <div class="row"><!--Start row-->
                        
                        <div class="col-xs-12">
                            <div class="flag">
                                <p>
                                    <i class="fa fa-phone fa-3x"></i>
                                    لوريم ايبسوم هو نص تحضيرى لحجز مساحة لاختبار الشكل واللون .
                                </p>
                                <a href="#">تواصل معنا</a>
                            </div>
                        </div>
                        
                    </div><!--End row-->
                </div><!--End container-->
            </section>
            <!--============ End to_contact ============-->
                     @endsection
