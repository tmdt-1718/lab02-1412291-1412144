class FriendshipsController < ApplicationController
  before_action :authenticate_user!
  def index
    @title = "FIND FRIENDS"
    @users = User.all
    @friendships = current_user.friendships.all
  end

  def create
    @friendship = current_user.friendships.new(friend_id: params[:friend_id])
    @friendship.save
    redirect_to root_path
  end

  def show_friends
    @title = "FRIENDS"
    @friendships = current_user.friendships
  end

  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    redirect_to root_path
  end
end
