$(document).ready(function() {
  $('.carousel.slide').hide();
  $('button').click(function() {
    $('#carouselExampleControls').slideToggle(1000);
  });

  $('.slide_down').click(function() {
    $("html, body").animate({ scrollTop: $(document).scrollTop() + 580 }, 1000);
  });

  $('.button-size').click(function() {
    if($('.form-control-for-checkbox').prop('checked')) {
      $('.form-control-for-checkbox').prop('checked', false);
    }
    else {
      $('.form-control-for-checkbox').prop('checked', true);
    }
  });
});

// $(window).scroll(function() {
//   if($(window).scrollTop() + $(window).height() == $(document).height()) {
//     $('.navbar-bottom').show(1000);
//   }
//   else {
//     $('.navbar-bottom').hide();
//   }
// });

// (function ($) {
//   $(document).ready(function(){
//     $(".navbar-bottom").hide();
//     $(function () {
//         $(window).scroll(function () {
//                // set distance user needs to scroll before we start fadeIn
//           if ($(this).scrollTop() > 100) {
//               $('.navbar-bottom').fadeIn();
//           } else {
//               $('.navbar-bottom').fadeOut();
//           }
//       });
//   });
// });
