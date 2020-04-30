class Order < ApplicationRecord
  belongs_to :user
  has_many :order_products
  belongs_to :address
  #belongs_to :product
end
