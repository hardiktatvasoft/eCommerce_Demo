class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.references :user, foreign_key: true
      t.text :street1
      t.text :street2
      t.text :city
      t.text :state
      t.text :pincode

      t.timestamps
    end
  end
end
