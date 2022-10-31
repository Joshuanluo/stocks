class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.text :name
      t.text :symbol
      t.float :last_price

      t.timestamps
    end
  end
end
