class MessagesController < ApplicationController
  def show_inbox
    @messages = Message.all
  end

  def new
    @message = Message.new
    @friendships = current_user.friendships
  end

  def create
    @message = Message.new(sender_id: current_user.id, content: params[:content])
    @message.save
    @receivers = params[:receivers]
    @receivers.each do |receiver|
      rev = @message.receipts.new(receiver_id: receiver)
      rev.save
      rev.errors.full_messages
    end
    redirect_to root_path
  end
end
