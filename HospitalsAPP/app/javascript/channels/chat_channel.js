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

  speak: function(content, id) { //???????????
    return this.perform('speak', { message: content, conversation_id: id });
  }
});

const submitButton = document.querySelector('#submit-button');
const messageInput = document.querySelector('#message-input');
const conversationSelect = document.querySelector('#conversation-select');

submitButton.addEventListener('click', function() {
  const message = messageInput.value;
  const conversationId = conversationSelect.value;

  chatChannel.speak({ message: message, conversation_id: conversationId });

  messageInput.value = '';
});
