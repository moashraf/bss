<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="description" content="{{ setting('site.description') }}">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>{{ setting('site.title') }}</title>
        <link rel="icon" href="{{ setting('site.logo') }}" type="image/png">
        <!--============== Cairo Google Fonts ==============-->
        <link href="https://fonts.googleapis.com/css?family=Cairo" rel="stylesheet">
        <!--============== fontAweasome CSS ==============-->
        <link rel="stylesheet" href=" {{ asset('css/font-awesome.min.css') }}  ">
        <!--============== animate CSS ==============-->
        <link rel="stylesheet" href=" {{ asset('css/animate.css') }} ">
        <!--============== bootstrap CSS ==============-->
        <link rel="stylesheet" href=" {{ asset('css/bootstrap.min.css') }} ">
        <link rel="stylesheet" href=" {{ asset('css/bootstrap-rtl.min.css') }} ">
        <!--============== myStyle CSS ==============-->
        <link rel="stylesheet" href="  {{ asset('css/main-style.css') }} ">
    </head>
    <body>
        <div class="wrap_home"><!--Start wrap home-->
            
            <!--============ Strat top_socials ============-->
            <section class="top_socials">
                <div class="container">
                    <ul class="socials list-unstyled list-inline navbar-left">
                        <li>
                            <a  target="_blank" href="{{ setting('site.facebook') }}">
                                <i class="fa fa-facebook fa-fw"></i>
                            </a>
                        </li>
                        <li>
                            <a  target="_blank" href="{{ setting('site.linkedin') }}">
                                <i class="fa fa-linkedin fa-fw"></i>
                            </a>
                        </li>
                        <li>
                            <a  target="_blank" href="{{ setting('site.youtube') }}">
                                <i class="fa fa-youtube fa-fw"></i>
                            </a>
                        </li>
                         
                    </ul>

                    <ul class="mail list-unstyled list-inline navbar-right">
                    <li>
                        <i class="fa fa-envelope fa-fw"></i>
                  {{ setting('site.email_email') }}   
                    </li>
                    <li>
                        <i class="fa fa-phone fa-fw"></i>
              {{ setting('site.phone_phone') }} 
                    </li>
                </ul>
                </div>    
            </section>
            <!--============ End top_socials ============-->
            
            <!--============ Strat nav ============-->
            <nav class="navbar">
              <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </button>
                  <a class="navbar-brand" href="#">
                    <img src="http://localhost/laravel/storage/app/public/{{ setting('site.logo') }}" alt="logo">      
                  </a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                  <ul class="nav navbar-nav navbar-left">
                    <li class=""><a href="{{ URL::to('/')}}" class="active_link">الرئيسية <span class="sr-only">(current)</span></a></li>
                    <li><a href="{{ URL::to('/aboutus')}}">من نحن</a></li>
                    <li><a href="{{ URL::to('/Service')}}">الخدمات</a></li>
                    <li><a href="{{ URL::to('/blog')}}">المدونة</a></li>
                    <li><a href="{{ URL::to('/contact')}}">اتصل بنا</a></li>
                  </ul>
                </div><!-- /.navbar-collapse -->
              </div><!-- /.container-fluid -->
            </nav>
            <!--============ End nav ============-->





                    @yield('content')   



            <!--============ Start footer ============-->
            <footer>
                <div class="container"><!--Start container-->
                    <div class="row"><!--Start row-->
                        
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="footer_about">
                                <img src="http://localhost/laravel/storage/app/public/{{ setting('site.logo') }}" alt="footer logo">
                                <p> {{ setting('site.description') }}</p>
                            </div>
                        </div>
                        
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="footer_posts">
                                <h4> مقالات   </h4>
                                <div class="media">
                                    <div class="media-left">
                                        <img src="img/img_post.jpg" alt="">
                                    </div>
                                    <div class="media-body">
                                        <h4 class="media-heading">
                                            <a href="#">
                                                عنوان المقال 
                                            </a>    
                                        </h4>
                                        <p>    
                                            01/01/2000
                                        </p>    
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="media-left">
                                        <img src="img/img_post.jpg" alt="">
                                    </div>
                                    <div class="media-body">
                                        <h4 class="media-heading">
                                            <a href="#">
                                                عنوان المقال
                                            </a>    
                                        </h4>
                                        <p>    
                                            01/01/2000
                                        </p>    
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="media-left">
                                        <img src="img/img_post.jpg" alt="">
                                    </div>
                                    <div class="media-body">
                                        <h4 class="media-heading">
                                            <a href="#">
                                                عنوان المقال
                                            </a>    
                                        </h4>
                                        <p>    
                                            01/01/2000
                                        </p>    
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="footer_services">
                                <h4>قوائم</h4>
                                <ul class="list-unstyled">
                                                                    {{ menu('home') }}

                                </ul>
                            </div>
                        </div>
                        
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="footer_contact">
                                <h4>تواصل معنا</h4>
                                <ul class="list-unstyled">
                                     
                                    <li>
                                        <i class="fa fa-phone fa-fw"></i>
{{ setting('site.phone_phone') }}                                    </li>
                                    <li>
                                        <i class="fa fa-envelope fa-fw"></i>
{{ setting('site.email_email') }}                                    </li>
                                    <li>
                                        <i class="fa fa-map-marker fa-fw"></i>
{{ setting('site.location_location') }}                                    </li>
                                </ul>
                            </div>
                        </div>
                        
                    </div><!--End row-->
                </div><!--End container-->
            </footer>
            <!--============ End footer ============-->
            
            <!--============ Start rights ============-->
            <section class="rights">
                <p>
                    جميع الحقوق محفظة لعيادات 
                    <span>BCC</span>
                    : تم تصميمة بشركة <a href="#">Be4em</a>
                </p>
            </section>
            <!--============ End rights ============-->
            
            <!--============ Start up ============-->
            <i class="up fa fa-arrow-up fa-fw hidden-xs"></i>
            <!--============ End up ============-->
        
        </div><!--End wrap home-->
        
        <!--============ jQuery liberary ============-->
        <script src=" {{ asset('js/jquery-3.2.1.min.js') }} "></script>
        <!--============ bootstrap JS ============-->
        <script src=" {{ asset('js/bootstrap.js') }} "></script>
        <!--============ wow JS ============-->
        <script src=" {{ asset('js/wow.min.js') }} "></script>
        <!--============ custom JS ============-->
        <script src=" {{ asset('js/main-custom.js') }} "></script>
        <script>
            $(document).ready(function(){
                new WOW().init();

                //go up
                $(window).scroll(function(){
                    if ($(this).scrollTop() >= 600){
                        $('.up').fadeIn(500);
                    } else {
                        $('.up').fadeOut(500);
                    }
                });

                $('.up').click(function (){
                    $('html, body').animate({
                        scrollTop: 0
                    },500);
                });
            });
        </script>
    </body>
</html>
