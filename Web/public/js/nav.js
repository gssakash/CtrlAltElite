$('.navbar-toggler').click(function(){
  $('.navbar-toggler i').toggleClass("fa-times");
});

$(window).on('load',function(){
  $('#loginModal').modal('show');
});
