class StocksController < ApplicationController
  StockQuote::Stock.new(:api_key => 'pk_16a849fd637243a79fff90fa4d42bc5d')
  
  
  def index
  
  end

  def create
    raise "hell"
  end

  def show
  end
end
