// Basic detect keyboard presses after ENTER

document.addEventListener("keydown", onKeyPressed, false);

var barcode = '';

function onKeyPressed(e) {
    var keyCode = e.keyCode;
    if (keyCode == 13) {  // ENTER Code
        alert(barcode);
        barcode = '';
    } else {
        if (keyCode != 16) { // se a key é diferente de uma nova linha e Shift, add valor na variavel
            barcode = barcode + e.key;
        }
    }
}