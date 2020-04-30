class Product < ApplicationRecord
  belongs_to :category
  mount_uploader :image, ProductImageUploader
  has_many :order_products
  #has_many :orders
end
