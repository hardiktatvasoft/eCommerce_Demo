class RemovePricesFromCarts < ActiveRecord::Migration[5.1]
  def change
    remove_column :carts, :price, :decimal
    remove_column :carts, :total_price, :decimal
  end
end
