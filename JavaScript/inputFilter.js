// Restricts input for each element in the set of matched elements to the given inputFilter

(function ($) {
    $.fn.inputFilter = function (inputFilter) {
        return this.on("input keydown keyup mousedown mouseup select contextmenu drop", function () {
            if (inputFilter(this.value)) {
                this.oldValue = this.value;
                this.oldSelectionStart = this.selectionStart;
                this.oldSelectionEnd = this.selectionEnd;
            } else if (this.hasOwnProperty("oldValue")) {
                this.value = this.oldValue;
                this.setSelectionRange(this.oldSelectionStart, this.oldSelectionEnd);
            } else {
                this.value = "";
            }
        });
    };
}(jQuery));

// Install input filters.
$('form input').inputFilter(function (value) {
    return /^-?\d*$/.test(value); // Integer
});
$('form input').inputFilter(function (value) {
    return /^\d*$/.test(value); // Integer >= 0
});
$('form input').inputFilter(function (value) {
    return /^\d*$/.test(value) && (value === "" || parseInt(value) <= 500); // Integer >= 0 and <= 500
});
$('form input').inputFilter(function (value) {
    return /^-?\d*[.,]?\d*$/.test(value); // Float (use . or , as decimal separator)
});
$('form input').inputFilter(function (value) {
    return /^-?\d*[.,]?\d{0,2}$/.test(value); // Currency (at most two decimal places)
});
$('form input').inputFilter(function (value) {
    return /^[a-z]*$/i.test(value); // A-Z only
});
$('form input').inputFilter(function (value) {
    return /^[0-9a-f]*$/i.test(value); // Hexadecimal
});