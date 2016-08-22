$(document).ready(function(){
    var dispatcher = new WebSocketRails('musicales-tannay.ch/websocket');
    dispatcher.on_open = function(data) {
        console.log('Connection has been established: ', data);
        dispatcher.trigger('hello', 'Hello, there!');
    }

    var channel = dispatcher.subscribe('updates');
    channel.bind('update', function(count) {
        $('#count').text(count);
    });
});