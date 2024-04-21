class ConversationController < ApplicationController
  def index
  end
  def show
    @curusr=current_user
    @conversations = current_user.conversations
    #render json: @conversations
  end

  def create
    @conversation = Conversation.find_by(doctor_id: params[:doctor_id], patient_id: params[:patient_id])
    if @conversation.nil?
      @conversation = Conversation.new(conversation_params)
    if @conversation.save
      redirect_to @conversation
    else
      render :new
    end
    else
      redirect_to @conversation
    end
  end

  private

  def conversation_params
    params.require(:conversation).permit(:doctor_id, :patient_id)
  end
end
