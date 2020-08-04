// simple autoplay

function soundPlay() {
    // chrome://flags/#autoplay-policy'
    // Setting it to “No user gesture is required” solves the problem in Chrome.
    var song = new Audio();
    song.src = 'http://hcmaslov.d-real.sci-nnov.ru/public/mp3/ACDC/ACDC%20-%20Highway%20to%20Hell.mp3';
    song.play();
}