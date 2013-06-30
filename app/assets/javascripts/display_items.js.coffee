# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
  $("#display_item_dish_id").click ->
     $("#dialog").load("/dishes/select_dishes table")
     $("#dialog").dialog({
       title:"选择菜品",
       width:800,
       height:600
                         })