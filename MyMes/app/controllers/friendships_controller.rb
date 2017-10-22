class FriendshipsController < ApplicationController
  def index
    @users = User.all
  end

  def create
    @friendship = current_user.friendships.new(friend_id: params[:friend_id])
    @friendship.save
    redirect_to root_path
  end

  def show_friends
    @friendships = current_user.friendships
  end

  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    redirect_to root_path
  end
end
