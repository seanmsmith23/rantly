$(document).ready(function(){
  $('#registration-form').hide();

  $('#join-button').on('click', function(e){
    e.preventDefault();
    $('#registration-form').show();

    $('.splash-content').hide();
    $('.splash-bottom').hide();

    $('body').addClass('grey-back');
  });
});