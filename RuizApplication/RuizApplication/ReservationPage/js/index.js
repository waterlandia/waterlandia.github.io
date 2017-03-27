$(document).ready(function () {
    //This block serves to make the calendar functional
    var date_input = $('input[name="date"]');
    var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
    date_input.datepicker({
        format: 'mm/dd/yyyy',
        container: container,
        todayHighlight: true,
        autoclose: true,
        startDate: "today-1",
        calendarWeeks: true
    });
    //This is for if the user trys to submit bad info and the page reloads, this block automatically re-fills in what they had before
    var allInfo = JSON.parse(name);
    $("#name").val(allInfo[1]);
    $("#number").val(allInfo[2]);
    $("#email").val(allInfo[3]);
    highlightWeekDay();

});

//I am getting the information from a field because information is being assigned to it on the spot
var reservedTimes = $("#reservedTimesArrayField").val().split(",").slice(1);
$('#selectedTimes').val(reservedTimes);
//It first checks if the user selected any times. If they did it goes through the array. We can explain how it works if you want (it's a little complicated, but look at how elegant the code is! :) ).
if (reservedTimes !== []) {
    for (var i = 0; i < reservedTimes.length; i += 2) {
        $('.' + reservedTimes[i]).find('.' + reservedTimes[i + 1]).addClass("reserved");
    }
}

//"td" is each time slot in the table
$("td").click(function () {
    if ($("#date").val() === "") {
        alert("You must select a date first!");
    } else {
        //The nex two variables are classes that are going to be combined into a new unique variable (current selection) and that variable will be added to an array
        var selectedTime = $(this).parent().prop('className');
        var weekDay = $(this).prop('className').split(" ")[0];
        var currentSelection = selectedTime + "," + weekDay;
        var idx = reservedTimes.indexOf(currentSelection);
        
        if ($(this).is(".reserved")) {
            //do nothing
        }
        else if ($(this).is(".active")) {
            $(this).removeClass("active");
            reservedTimes.splice(idx, 1);
            $("#currentIDX").html(idx);
            $('#selectedTimes').val(reservedTimes);
        } else {
            $(this).addClass("active");
            //These are html elements that store the JavaScript variables because there is no easy way to pass variables from Javascript to VB so we decided to update HTML elements with the variables so that VB can manipulate them and finally pass them back
            reservedTimes.push(currentSelection);
            $('#selectedTimes').val(reservedTimes);
        }
    }
    //Becuase VB is stubborn, it does not want it's elements to be hidden so it must be overridden by JS
    $("#calendarButton").css("display", "none");
    $("#reservedTimesArrayField").css("display", "none");
});
//This function is called for the submit button click
function makeReservation() {
    window.name = JSON.stringify(checkForm());
    var allInfo = JSON.parse(name);
    $("#name").val(allInfo[1]);
    $("#number").val(allInfo[2]);
    $("#email").val(allInfo[3]);
    if (checkForm()[0]) {
        $(".active").addClass("reserved");
        $(".active").removeClass("active");
        $('#selectedTimes').val(reservedTimes);
    } else {
        alert(checkForm()[6]);
    }
}

function getDayOfWeek(date) {
    var dayOfWeek = new Date(date).getDay();
    return isNaN(dayOfWeek) ? null : ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'][dayOfWeek];
}

//This function gives a week number given a date
function week(year, month, day) {
    function serial(days) {
        return 86400000 * days;
    }
    function dateserial(year, month, day) {
        return (new Date(year, month - 1, day).valueOf());
    }
    function weekday(date) {
        return (new Date(date)).getDay() + 1;
    }
    function yearserial(date) {
        return (new Date(date)).getFullYear();
    }
    var date = year instanceof Date ? year.valueOf() : typeof year === "string" ? new Date(year).valueOf() : dateserial(year, month, day),
      date2 = dateserial(yearserial(date - serial(weekday(date - serial(1))) + serial(4)), 1, 3);
    return ~~((date - date2 + serial(weekday(date2) + 5)) / serial(7));
}

$("#date").change(function () {
    var currentDate = $(this).val().split("/");
    var weekNum = week(parseInt(currentDate[2]), parseInt(currentDate[0]), parseInt(currentDate[1]));
    //More storing stuff in HTML elements for VB. We had to use buttons because they are the only things we can control with JS to trigger a VB event. VB doesn't even have a value changed event (it only fires on form submit)!
    $("#calendarHiddenField").val(weekNum);
    var weekDay = getDayOfWeek(currentDate);
    $("#weekDayInput").val(weekDay);
    $("#weekNumberInput").val(weekNum);
    //This makes the weekday the user selected blink
    highlightWeekDay();
    //This little function stores the y position so when the submit button is clicked an reloads the page, the user will be scrolled back to their position
    refreshPage();
    //This stores all the variables in the window.name, a special variable that persists even on reload
    window.name = JSON.stringify(checkForm());
    //This is solely used to trigger a VB event
    $("#calendarButton").click();
});

//The next two functions simply store the y position and set it on load
function refreshPage() {
    var page_y = document.getElementsByTagName("body")[0].scrollTop;
    window.location.href = window.location.href.split('?')[0] + '?page_y=' + page_y;
    localStorage.setItem("windowLocation", window.location.href.split('?')[0] + '?page_y=' + page_y);
}
window.onload = function () {
    if (localStorage.windowLocation.indexOf('page_y') !== -1) {
        var match = localStorage.windowLocation.split('?')[1].split("&")[0].split("=");
        document.getElementsByTagName("body")[0].scrollTop = match[1];
    }
};
$(window).scroll(function () {
        $(".slideanim").each(function () {
            var pos = $(this).offset().top;

            var winTop = $(window).scrollTop();
            if (pos < winTop + 600) {
                $(this).addClass("slide");
            }
        });
    });

//This function simply highlights the weekday of the date selected when called
function highlightWeekDay() {
    var weekDay = $("#weekDayInput").val();
    if (weekDay === "Monday") {
        $(".daysOfTheWeek :nth-child(2)").addClass("blink").one("webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend", function () {
            $(this).removeClass("blink");
        });
    } else if (weekDay === "Tuesday") {
        $(".daysOfTheWeek :nth-child(3)").addClass("blink").one("webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend", function () {
            $(this).removeClass("blink");
        });
    } else if (weekDay === "Wednesday") {
        $(".daysOfTheWeek :nth-child(4)").addClass("blink").one("webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend", function () {
            $(this).removeClass("blink");
        });
    } else if (weekDay === "Thursday") {
        $(".daysOfTheWeek :nth-child(5)").addClass("blink").one("webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend", function () {
            $(this).removeClass("blink");
        });
    } else if (weekDay === "Friday") {
        $(".daysOfTheWeek :nth-child(6)").addClass("blink");
    } else {
        $(".daysOfTheWeek :nth-child(7)").addClass("blink").one("webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend", function () {
            $(this).removeClass("blink");
        });
    }
}

//This function takes all the data in the form and stores it into an array
function checkForm() {
    var name = $("#name").val();
    var number = $("#number").val();
    var email = $("#email").val();
    var date = $("#date").val();
    var hasReservations;
    if ($(".timeTable tr > td").hasClass("active")) {
        hasReservations = "true";
    } else {
        hasReservations = "false";
    }
    var isFilledOut;
    var message;
    if (name === "") {
        message = "Please enter your name.";
    } else if (number === "") {
        message = "Please enter your number.";
    } else if (email === "") {
        message = "Please enter your email address.";
    } else if (date === "") {
        message = "Please enter a date.";
    } else if (hasReservations === "false") {
        message = "Please schedule a time.";
    } else { message = "Unknown Error"; }
    //the array variables, clearly listed here
    var allInfo = [isFilledOut, name, number, email, date, hasReservations, message];
    if (name === "" || number === "" || email === "" || date === "" || hasReservations === "false") {
        allInfo[0] = false;
    } else {
        allInfo[0] = true;
    }
    //this stores a bool val if the form is filled out in a HTML element for VB
    $("#isFormFilled").attr("value", JSON.stringify(allInfo[0]));
    //the array is stored in the window.name so the information can be plugged back in on reload
    window.name = JSON.stringify(allInfo);
    return allInfo;
}