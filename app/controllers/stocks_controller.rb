class StocksController < ApplicationController
  before_action :check_for_login

  StockQuote::Stock.new(:api_key => 'pk_16a849fd637243a79fff90fa4d42bc5d')
  
  
  def index
    @stocks = @current_user.stocks.group(:symbol).sum(:shares)
    
  end

  def search
    
  end

  def find
    if params[:symbol].blank?
      flash[:error] = "Hey, you forget to enter the stock symbol."
      redirect_to search_path
    else
      begin
        @stock = StockQuote::Stock.quote(params[:symbol].upcase)
      rescue => exception
        flash[:error] = "Sorry, this stock is not exit."
        return redirect_to search_path
      end
      @stock_logo =  StockQuote::Stock.logo(params[:symbol].upcase)

      render :search
      
    end
  end

  def show
    
    @stock = StockQuote::Stock.quote(params[:id])
    @stock_logo =  StockQuote::Stock.logo(params[:id])
    @company = StockQuote::Stock.company(params[:id])
  end



end
