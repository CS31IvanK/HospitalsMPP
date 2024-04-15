class ChatChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
  end

  def speak(data)
    user = User.find_by(id: data['user_id'])
    conversation = Conversation.find_by(id: data['conversation_id'])

    return unless user && conversation

    message = conversation.messages.create!(body: data['message'], user: user)
    socket = { message: message.body, type: 'message' }
    ChatChannel.broadcast_to('chat_channel', socket)
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
