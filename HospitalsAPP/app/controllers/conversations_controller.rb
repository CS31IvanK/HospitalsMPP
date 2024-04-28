class ConversationsController < ApplicationController
  def index
  end
  def show
    @conversation = Conversation.find(params[:id])
    #render json: @conversations
  end
  def new
    @conversation = Conversation.new
  end

  def messages
    conversation = Conversation.find(params[:id])
    messages = conversation.messages
    render json: messages
  end
  def create
    @conversation = Conversation.find_by(doctor_id: params[:doctor_id], patient_id: params[:patient_id])
    if @conversation.nil?
      @conversation = Conversation.new(conversation_params)
      if @conversation.save
        redirect_to chat_show_url
      else
        #render :new
      end
    else
      redirect_to chat_show_url
    end
  end

  private

  def conversation_params
    params.require(:conversation).permit(:doctor_id, :patient_id)
  end
end
