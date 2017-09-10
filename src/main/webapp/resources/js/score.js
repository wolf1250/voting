var stompClient = null;

function setConnected(connected) {
    $("#connect").prop("disabled", connected);
    $("#disconnect").prop("disabled", !connected);
}

function connect() {
    var socket = new SockJS('/gs-guide-websocket');
    stompClient = Stomp.over(socket);
    stompClient.connect({}, function (frame) {
        setConnected(true);
        console.log('Connected: ' + frame);
        stompClient.subscribe('/topic/counting', function (greeting) {
            console.log(greeting);
            showGreeting(JSON.parse(greeting.body));
        });
    });
}

function disconnect() {
    if (stompClient != null) {
        stompClient.disconnect();
    }
    setConnected(false);
    console.log("Disconnected");
}

function showGreeting(item) {
    console.log(item);
    $("#greetings")
        .append("<tr class=\"active\">")
        .append("<td>"+item.name+"</td>")
        .append("<td>"+item.s1+"</td>")
        .append("<td>"+item.s2+"</td>")
        .append("<td>"+item.s3+"</td>")
        .append("<td>"+item.s4+"</td>")
        .append("<td>"+item.s5+"</td>")
        .append("<td>"+item.s6+"</td>")
        .append("<td>"+item.total+"</td>")
        .append("</tr>");
}

$(function () {
    $("form").on('submit', function (e) {
        e.preventDefault();
    });
    $( "#connect" ).click(function() { connect(); });
    $( "#disconnect" ).click(function() { disconnect(); });
});
