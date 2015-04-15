// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function() {
  var audioSection = $('section#audio');
  $('a.html5').click(function() {

    var audio = $('<audio>', {
      controls : 'controls'
    });

    var url = $(this).attr('href');
    $('<source>').attr('src', url).appendTo(audio);
    audioSection.html(audio);
    return false;
  });
});
