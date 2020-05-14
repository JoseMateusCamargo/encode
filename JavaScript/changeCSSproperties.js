// Basic to change CSS using JQuery

$(function () {
    $('#azul').click(function () {
        $('p')
            .css("background-color", "blue")
            .fadeOut()
            .delay(1000)
            .fadeIn();
    });

    $('#vermelho').click(function () {
        $('p').css("background-color", "red");
        $('#mensagem')
            .text("Cor alterada com sucesso")
            .css({ color: 'red', border: '1px solid red' })
            .delay(3000)
            .addClass('green')

        $('button').removeClass('red');
    });
});