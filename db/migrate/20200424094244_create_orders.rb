class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.datetime :order_date
      t.integer :quantity
      t.text :address

      t.timestamps
    end
  end
end
