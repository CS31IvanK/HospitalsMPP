import consumer from "./consumer"

let chatChannel = null;
const conversationId = "<%= params[:id] %>";

consumer.subscriptions.create({ channel: "ChatChannel", conversation_id: conversationId }, {
  connected() {
    chatChannel = this;
  },
  disconnected() {
  },
  received(data) {
    console.log("Received message:", data.message);
    const chat = document.querySelector('#chat');
    const newMessage = document.createElement('p');
    newMessage.textContent = data.message;
    chat.appendChild(newMessage);

    chat.scrollTop = chat.scrollHeight;
  },
  speak: function(content, id) {
    return this.perform('speak', { message: content, conversation_id: id });
  }
});

const submitButton = document.querySelector('#submit-button');
const messageInput = document.querySelector('#message-input');
const conversationSelect = document.querySelector('#conversation-select');

submitButton.addEventListener('click', function() {
  const message = messageInput.value;
  const conversationId = conversationSelect.value;

  chatChannel.speak(message, conversationId); // Изменено
  messageInput.value = '';
});
