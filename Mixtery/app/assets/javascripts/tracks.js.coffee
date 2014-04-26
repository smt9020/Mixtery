# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->

  $('input[type="radio"]').click ->
    if $(this).attr('data') == "true"
      $(this).parent().append("<div class='right_answer_status'> Correct! </div>")
    else
      $(this).parent().append("<div class='wrong_answer_status'> Try Again </div>")
