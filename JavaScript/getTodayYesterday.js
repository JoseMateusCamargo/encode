// Get Date (today and yesterday)

/* 
First
Using now.getTimezoneOffset() * 60000 -> because i'm BR
*/

var now = new Date();
var todayDate = new Date(now.getTime() - now.getTimezoneOffset() * 60000).toISOString().slice(0, 10);

var yesterday = new Date(now.getTime() - now.getTimezoneOffset() * 60000);
yesterday.setDate(yesterday.getDate() - 1);
yesterday = yesterday.toISOString().slice(0, 10);
console.log(todayDate); // 2020-05-01
console.log(yesterday); // 2020-04-30


/* 
Second
*/

var d = new Date();
d.setDate(d.getDate() - 1); // <-- add this
var curr_date = d.getDate();
var curr_month = d.getMonth() + 1;
var curr_year = d.getFullYear();
var dataY = (curr_year + "-" + curr_month + "-" + curr_date);
var c = new Date();
var dataC = (c.getFullYear() + '-' + (c.getMonth() + 1) + '-' + c.getDate());
console.log(dataY); // 2020-4-30
console.log(dataC); // 2020-5-1

/*
var d = new Date('10/08/2015 00:00:00');
d.toLocaleString() // 08/10/2015 00:00:00
d.toString(); //Thu Oct 08 2015 00:00:00 GMT-0300 (Hora oficial do Brasil)
d.toGMTString();  //Thu, 08 Oct 2015 03:00:00 GMT
d.toUTCString();  //Thu, 08 Oct 2015 03:00:00 GMT
*/