class RenameStocksOrdersToOrdersStocks < ActiveRecord::Migration[5.2]
  def change
    rename_table :stocks_orders, :orders_stocks
  end
end
