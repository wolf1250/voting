function connect() {
    var socket = new SockJS('/gs-guide-websocket');
    stompClient = Stomp.over(socket);
    stompClient.connect({}, function (frame) {
        console.log('Connected: ' + frame);
        stompClient.subscribe('/topic/greetings', function (data) {
            console.log(data);
            
        });

        stompClient.subscribe('/topic/menu-' + selected_menu + '/rating1', function (data) {
            console.log('/topic/menu-' + selected_menu + '/rating1');
            console.log(data);
            var target = '#menu' + selected_menu + ' #rating-1';
            console.log(target);
            $(target).rating('update', parseFloat(data.body));

        });

        stompClient.subscribe('/topic/menu-' + selected_menu + '/rating2', function (data) {
            console.log('/topic/menu-' + selected_menu + '/rating2');
            console.log(data);
            var target = '#menu' + selected_menu + ' #rating-2';
            console.log(target);
            $(target).rating('update', parseFloat(data.body));

        });

        stompClient.subscribe('/topic/menu-' + selected_menu + '/rating3', function (data) {
            console.log('/topic/menu-' + selected_menu + '/rating3');
            console.log(data);
            var target = '#menu' + selected_menu + ' #rating-3';
            console.log(target);
            $(target).rating('update', parseFloat(data.body));

        });

        stompClient.subscribe('/topic/menu-' + selected_menu + '/rating4', function (data) {
            console.log('/topic/menu-' + selected_menu + '/rating4');
            console.log(data);
            var target = '#menu' + selected_menu + ' #rating-4';
            console.log(target);
            $(target).rating('update', parseFloat(data.body));

        });

        stompClient.subscribe('/topic/menu-' + selected_menu + '/rating5', function (data) {
            console.log('/topic/menu-' + selected_menu + '/rating5');
            console.log(data);
            var target = '#menu' + selected_menu + ' #rating-5';
            console.log(target);
            $(target).rating('update', parseFloat(data.body));

        });

        stompClient.subscribe('/topic/menu-' + selected_menu + '/rating6', function (data) {
            console.log('/topic/menu-' + selected_menu + '/rating6');
            console.log(data);
            var target = '#menu' + selected_menu + ' #rating-6';
            console.log(target);
            $(target).rating('update', parseFloat(data.body));

        });

        stompClient.subscribe('/topic/menu-' + selected_menu + '/rating7', function (data) {
            console.log('/topic/menu-' + selected_menu + '/rating7');
            console.log(data);
            var target = '#menu' + selected_menu + ' #rating-7';
            console.log(target);
            $(target).rating('update', parseFloat(data.body));

        });

        stompClient.subscribe('/topic/menu-' + selected_menu + '/rating8', function (data) {
            console.log('/topic/menu-' + selected_menu + '/rating8');
            console.log(data);
            var target = '#menu' + selected_menu + ' #rating-8';
            console.log(target);
            $(target).rating('update', parseFloat(data.body));

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
