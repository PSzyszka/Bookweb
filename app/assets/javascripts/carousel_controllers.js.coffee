$('.left').click ->
  $('#myCarousel').carousel 'prev'
  return
$('.right').click ->
  $('#myCarousel').carousel 'next'
  return
$('.carousel').carousel
  interval: 60
  pause: 'hover'
  wrap: true
