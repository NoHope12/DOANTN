$(document).ready(function(){
    let html = $(".active").parents('li').last()
    html.addClass('show');

    let id = html.attr('data-parent');
    $(".parent-"+id).addClass("show");
    $(".active").parents(".collapse").addClass("show");

})