
var d = new Date();

var months = ["Jan", "Feb", "March", "April", "May", "June", "July", "Aug", "Sept", "Oct", "Nov", "Dec"];

var monthName=months[d.getMonth()];

var date = d.getDate();

var week = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];


var weekday = week[d.getDay()]; //-1

var displayDate = weekday+'<br/> '+monthName+', '+date;

document.getElementById("date").innerHTML = displayDate;
