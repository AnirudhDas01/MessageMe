// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import * as jquery from "jquery"
import "semantic-ui" 

window.scroll_bottom = function() {
    if ($('#messages').length > 0) {
      $('#messages').scrollTop($('#messages')[0].scrollHeight);
    }
} 

submit_messages = function () {
    $('#message_body').on('keydown' , function(e) {
        if (e.key == 13) {
            e.preventDefault() ;
            $('button').on();
        }
    });
}

$(document).on('turbo:load', function() {
    $('.ui.dropdown').dropdown();
    submit_messages();
    scroll_bottom();
})



import "channels"
