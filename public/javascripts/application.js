// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function cleanForm () {
  $('.form_articulo input[type="text"]').val("");
}

function cleanForm2 () {
  $('#form_contenido input[type="text"], #form_contenido textarea').val("");
}

$(function(){
  $('#nuevo_articulo').live('click', function(e){
    e.preventDefault();
    $('.form_articulo').fadeIn();
  });
  
  $('#back_articulo').live('click', function(e){
    e.preventDefault();
    $('.form_articulo').fadeOut();
    cleanForm();
  });

  $('#nuevo_contenido').live('click', function(e){
    e.preventDefault();
    $('#form_contenido').fadeIn();
  });

  $('#back_contenido').live('click', function(e){
    e.preventDefault();
    $('#form_contenido').fadeOut();
    cleanForm2();
  });
});
