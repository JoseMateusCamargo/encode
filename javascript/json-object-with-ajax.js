With jQuery:
$.post("test.php", { json_string:JSON.stringify({name:"John", time:"2pm"}) });


Without jQuery:
var xmlhttp = new XMLHttpRequest();   // new HttpRequest instance 
xmlhttp.open("POST", "/json-handler");
xmlhttp.setRequestHeader("Content-Type", "application/json");
xmlhttp.send(JSON.stringify({name:"John Rambo", time:"2pm"}));