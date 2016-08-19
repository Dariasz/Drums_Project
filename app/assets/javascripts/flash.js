
$(".foronlyonesite").ready(function() {
    var animationend='webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
    
    $('.header1').hide().delay(3000).fadeIn().addClass('animated bounceInLeft');
    $('.header2').hide().delay(3000).fadeIn().addClass('animated bounceInRight').one('animationend', function() {
    $(this).removeClass('bounceInRight');
    $(this).delay(7000).fadeIn().addClass('rubberBand');
    });
     $('.header3').hide().delay(6000).fadeIn().addClass('animated flipInY');
    //$('.header2').hide().delay( 10000 ).fadeIn().addClass('animated zoomIn');
  });
  