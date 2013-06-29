# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
  $("table tr").click ->
    row = $(this).find('td:first').text()
    $("input[name='inputDish']").val(row)
    $("#dialog").closest(".ui-dialog").dialog().dialog('close');
#$(".ui-dialog").find(".dialog").dialog("close");
    #$(".ui-dialog").dialog('close')
    #$("#iii").value("1")
