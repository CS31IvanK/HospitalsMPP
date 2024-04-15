import consumer from "./consumer"

consumer.subscriptions.create("ChatChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    console.log("Received message:", data.message); // Добавляем консольный вывод
    const chat = document.querySelector('#chat');
    const newMessage = document.createElement('p');
    newMessage.textContent = data.message;
    chat.appendChild(newMessage);
  },

  speak: function(content) {
    return this.perform('speak', { message: content });
  }
});
