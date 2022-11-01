class StocksController < ApplicationController
  StockQuote::Stock.new(:api_key => 'pk_16a849fd637243a79fff90fa4d42bc5d')
  
  
  def index
  
  end

  def create
    symbol = params[:symbol].upcase
    @stock = StockQuote::Stock.quote
  end

  def show
  end
end
