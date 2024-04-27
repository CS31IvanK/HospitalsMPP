class ChatController < ApplicationController
  #def show
    #@messages = Message.all
  #end
  def show
    #@conversation = Conversation.find(params[:id])
    @conversation = Conversation.find_by(id: params[:id])
    puts @conversation.id
    #render json: @conversations
  end
  def new
    @conversation = Conversation.new
  end
  def create
    puts params[:doctor_id]
    puts "nuts"
    puts params[:patient_id]
    @conversation = Conversation.find_or_create_by(doctor_id: params[:doctor_id], patient_id: params[:patient_id])
    #if @conversation.nil?
    #  @conversation = Conversation.new(conversation_params)
    #if @conversation.save
    puts "someshit#{@conversation.id}"
    redirect_to chat_show_path(id: @conversation.id)
    #  else
        #render :new
    #  end
    #else
    #redirect_to chat_show_path(@conversation)
    #end
  end


  private

  def conversation_params
    params.permit(:doctor_id, :patient_id)
  end

end
