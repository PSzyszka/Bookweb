$(document).ready(function() {
  $('.carousel.slide').hide();
  $('#show_button').click(function() {
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

  $('#submit_rating').hide();
  $('.span-size').click(function(e) {
    var vote_value = $(e.currentTarget).data('vote')
    $('#rating_vote').val(vote_value);
    $(e.currentTarget).siblings().removeClass('rating-on');
    for ( var i = 1; i <= vote_value; i++ ) {
      $(`.span-size[data-vote="${i}"]`).addClass('rating-on');
    }

    $('#submit_rating').show();
    $('.live-rating').text(vote_value);
  });

  $('.span-size').hover(function(e) {
    var vote_value = $(e.currentTarget).data('vote')
    $('.live-rating').text(vote_value);
  });


  // var textInput = document.getElementById('#search');
  // var timeout = null;

  // textInput.onkeyup = function (e) {
  //     clearTimeout(timeout);
  //     timeout = setTimeout(function () {
  //         console.log('Input Value:', textInput.value);
  //     }, 800);
  // };

  // $('#search').keypress(function(e) {
  //   var search_term = $(e.currentTarget).val()
  //   $.ajax({
  //     url: '/books',
  //     type: "GET",
  //     data: {
  //       book_title: search_term
  //     },
  //     dataType: 'json',
  //     success: function(response) {
  //       debugger
  //       getData[title] = response;
  //     }
  //   });
  // });
});



// var substringMatcher = function(strs) {
//   return function findMatches(q, cb) {
//     var matches, substringRegex;
//     matches = [];
//     substrRegex = new RegExp(q, 'i');

//     $.each(strs, function(i, str) {
//       if (substrRegex.test(str)) {
//         matches.push(str);
//       }
//     });

//     cb(matches);
//   };
// };

// $('#the-basics .typeahead').typeahead({
//   hint: true,
//   highlight: true,
//   minLength: 1
// });
