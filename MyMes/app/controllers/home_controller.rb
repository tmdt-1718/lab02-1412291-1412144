class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    redirect_to messages_inbox_path
  end
end
