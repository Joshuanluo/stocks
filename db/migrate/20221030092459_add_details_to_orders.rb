class AddDetailsToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :bid_price, :float
    add_column :orders, :offer_price, :float
    add_column :orders, :shares, :float
  end
end
