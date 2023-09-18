class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    Message.create(message_params)
  end

  private
  def message_params
    params.require(:message).permit(:message).merge(user_id: current_user.id)
  end
end
