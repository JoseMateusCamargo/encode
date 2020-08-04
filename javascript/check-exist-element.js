// Check if element exists with jQuery and Javascript

// using jQuery
$(document).ready(function () {
    if ($("#id_elemento").length) {
        console.log("O elemento existe no DOM");
    } else {
        console.log("Ops! Elemento não existe no DOM");
    }
});

//using querySelector
if (document.querySelector('#id_elemento')) {
    console.log('Woohoo! Elemento existe');
}

// using ID
if (document.getElementById('id_elemento')) {
    console.log('Woohoo! Elemento existe');
}

// using querySelectorAll
if (document.querySelectorAll('.classe_de_elementos').length) {
    console.log('Woohoo! Elementos existem');
}