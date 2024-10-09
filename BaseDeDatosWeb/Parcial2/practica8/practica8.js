$(document).ready(  function(){
    alert("Funciona Jquery");

    $('#boton').click(function(){
        var Nombre = $('#nombre').val();

        alert(Nombre);
    })
    $('#texto').click(function(){
        $('#texto').css("display", "inherit").fadeOut(200);
        });
})
