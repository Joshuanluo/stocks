class OrdersController < ApplicationController
  before_action :check_for_login

  def index

  end

  def show
  end

  def new
  end

  def create
  end

  def destroy
  end

  private 
  def order_params
    params.require(:order).permit(:user_id, :bid_price ,:shares)
  end



end
