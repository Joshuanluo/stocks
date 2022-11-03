class OrdersController < ApplicationController
  before_action :check_for_login
  StockQuote::Stock.new(:api_key => 'pk_16a849fd637243a79fff90fa4d42bc5d')
  
  def index
    @orders = @current_user.orders.all
    # raise "hell"
  end

  def show
    @order = Order.find params[:id]
    # raise "hell"
  end

  def new
    @stock = StockQuote::Stock.quote(params[:symbol])
    @order = Order.new
  end

  def create

    order = Order.create :bid_price => params[:bid_price], :shares => params[:shares]
    order.stocks.create(symbol: params[:symbol])
    @current_user.orders << order
    
    redirect_to orders_path
  end

  def destroy
  end

  



end
