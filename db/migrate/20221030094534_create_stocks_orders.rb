class CreateStocksOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks_orders do |t|
      t.integer :stock_id
      t.integer :order_id
    end
  end
end
