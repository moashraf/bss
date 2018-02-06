@extends('master')

@section('content')
            
 
            
            <!--============ Start about_banner ============-->
            <section class="about_banner">
                <div class="overlay"><!--start overlay-->
                    <div class="container"><!--start container-->
                        <div class="banner_info">
                            <h2>المدونة</h2>
                            <p>لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل.</p>
                        </div>
                    </div><!--End container-->
                </div><!--End overlay-->
            </section>
            <!--============ End about_banner ============-->
            
            <!--============ Start blog_core ============-->
            <section class="blog_core">
                <div class="overlay"><!--Start overlay-->
                    <div class="container"><!--Start Container-->
                        <div class="row"><!--Start row-->
                        
                            <div class="col-xs-12">

                            @foreach($blog as $blog_val)

                               <div class="single_blog col-md-4">
                                        <a href="{{$blog_val->id}}">

                                    <img src="{{$blog_val->image}}" alt="">
                                    <div class="single_blog_body">
                                        <h4>{{$blog_val->title}} </h4>
                                        <p> {{$blog_val->body}} </p>
                                        <a href="{{$blog_val->id}}">
                                            اقرا المزيد
                                            <i class="fa fa-chevron-left fa-fw"></i>
                                        </a>
                                    </div>
                                 </a>

                                </div>
                        @endforeach

                             </div>
                        
                          
                            
                                           <center>   {{ $blog->links() }}  </center> 

                            
                        </div><!--End row-->
                    </div><!--End Container-->
                </div><!--End overlay-->
            </section>
            <!--============ End blog_core ============-->
             @endsection
