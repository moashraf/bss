$(document).ready(function () {
    
    $('.special_col').height($('.special_row').height());
    
    //owl carousel (clients logo)
    $('.owl-carousel').owlCarousel({
        autoplay:true,
        loop:true,
        dots: true,
        nav: false,
        margin: 20,
        responsive:{
            0:{items:1},
            600:{items:2},
            1000:{items:6}
            },
        center:true,
        slideBy:2,
        autoplayTimeout:5000,
      });      
    
//    //animation wow liberary
    new WOW().init();
//    
// 
//    $(window).scroll(function (){
//        if($(this).scrollTop() > 200){
//            $('.navbar').css('background-color', '#005f8f');
//        } else{
//            $('.navbar').css('background-color', 'transparent');
//        }
//    });

    
    //go up
//    $(window).scroll(function(){
//        if ($(this).scrollTop() >= 600){
//            $('.up').fadeIn();
//        } else {
//            $('.up').fadeOut();
//        }
//    });
//    
//    $('.up').click(function (){
//        $('html, body').animate({
//            scrollTop: 0
//        },600);
//    });
});

