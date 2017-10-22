class MessagesController < ApplicationController
  def show_inbox
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.sender_id = current_user.id
    @message.save
  end
  
  private
    def message_params
      params.require(:message).permit(:content);
end
end
