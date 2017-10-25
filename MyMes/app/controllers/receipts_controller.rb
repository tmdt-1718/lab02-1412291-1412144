class ReceiptsController < ApplicationController
  before_action :authenticate_user!
  def new
    @title = "RECEIPT"
    @receipt = Receipt.new
  end
end
