App.chat = App.cable.subscriptions.create("RoomChannel", {
  connected: function() {
    // Called when the subscription is ready for use on the server
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },

  received: function(data) {
    
  },

  speak: function(message) {
    window.alert(message);
    return this.perform('speak');
  }
}, $(document).on('keypress', '[data-behavior~=chat_speak]', function(event) {
  if (event.keyCode === 13) {
    var chatForm = $('#chat-form');
    App.chat.speak(chatForm.val());
    return chatForm.val('');
  }
}));