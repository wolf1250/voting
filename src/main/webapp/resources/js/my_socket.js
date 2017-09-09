function connect() {
    var socket = new SockJS('/gs-guide-websocket');
    stompClient = Stomp.over(socket);
    stompClient.connect({}, function (frame) {
        console.log('Connected: ' + frame);
        stompClient.subscribe('/topic/greetings', function (data) {
            console.log(data);
            
        });

        stompClient.subscribe('/topic/rating1', function (data) {
            console.log("/topic/rating1");
            console.log(data);
            var target = '#menu' + selected_menu + ' #rating-1';
            console.log(target);
            $(target).rating('update', parseInt(data.body));

        });

        stompClient.subscribe('/topic/rating2', function (data) {
            console.log("/topic/rating2");
            console.log(data);
            var target = '#menu' + selected_menu + ' #rating-2';
            console.log(target);
            $(target).rating('update', parseInt(data.body));

        });

        stompClient.subscribe('/topic/rating3', function (data) {
            console.log("/topic/rating3");
            console.log(data);
            var target = '#menu' + selected_menu + ' #rating-3';
            console.log(target);
            $(target).rating('update', parseInt(data.body));

        });

        stompClient.subscribe('/topic/rating4', function (data) {
            console.log("/topic/rating4");
            console.log(data);
            var target = '#menu' + selected_menu + ' #rating-4';
            console.log(target);
            $(target).rating('update', parseInt(data.body));

        });

        stompClient.subscribe('/topic/rating5', function (data) {
            console.log("/topic/rating5");
            console.log(data);
            var target = '#menu' + selected_menu + ' #rating-5';
            console.log(target);
            $(target).rating('update', parseInt(data.body));

        });

        stompClient.subscribe('/topic/rating6', function (data) {
            console.log("/topic/rating6");
            console.log(data);
            var target = '#menu' + selected_menu + ' #rating-6';
            console.log(target);
            $(target).rating('update', parseInt(data.body));

        });

        stompClient.subscribe('/topic/rating7', function (data) {
            console.log("/topic/rating7");
            console.log(data);
            var target = '#menu' + selected_menu + ' #rating-7';
            console.log(target);
            $(target).rating('update', parseInt(data.body));

        });

        stompClient.subscribe('/topic/rating8', function (data) {
            console.log("/topic/rating8");
            console.log(data);
            var target = '#menu' + selected_menu + ' #rating-8';
            console.log(target);
            $(target).rating('update', parseInt(data.body));

        });
    });
}

function disconnect() {
    if (stompClient !== null) {
        stompClient.disconnect();
    }
    console.log("Disconnected");
}

function sendName() {
    stompClient.send("/app/demo/hello", {}, JSON.stringify({
        'name': $("#name").val()
    }));
}

function showGreeting(message) {
    $("#greetings").append("<tr><td>" + message + "</td></tr>");
}
