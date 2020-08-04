// Passing Variable through JavaScript from one html page to another page html

/* 
First page
*/

window.onload = function () {
   var getInput = prompt("Hey type something here: ");
   localStorage.setItem("storageName", getInput);
}


/* 
Second page
*/

window.onload = alert(localStorage.getItem("storageName"));