console.log('Banana Is Loaded');


$(document).ready(function(){

  $('.lunchplace').hide();
  $('.lunchplace').fadeIn(1000);

  $('.new_place').on('click', function(){
    location.reload();
  });

});
