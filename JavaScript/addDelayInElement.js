
document.getElementsByClassName("code-scanner__input")[0].onkeypress = function (evt) {

    sleep(700);

    function sleep(delay) {
        var start = new Date().getTime();
        while (new Date().getTime() < start + delay);
    }
}