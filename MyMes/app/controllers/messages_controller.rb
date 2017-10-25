class MessagesController < ApplicationController
  before_action :authenticate_user!
  def show_inbox
    @title = "INBOX"
    @receivers = Receipt.where(receiver_id: current_user.id)
  end
  def show_sent
    @title = "SENT MESSAGE"
    @messages = Message.where(sender_id: current_user.id)
  end

  def new
    @title = "COMPOSE MESSAGE"
    @message = Message.new
    @friendships = current_user.friendships
  end

  def show
    @title = "MESSAGE CONTENT"
    @message = Message.find(params[:id])
    @receiver = Receipt.where(message_id: params[:id],receiver_id: current_user.id).first
    receipt = Receipt.where(message_id: params[:id],receiver_id: current_user.id).select(:read_at).first
    if receipt.read_at == nil
      @receiver.update(read_at: DateTime.current)
    end
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
