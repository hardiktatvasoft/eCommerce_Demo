class Product < ApplicationRecord
  belongs_to :category
  mount_uploader :image, ProductImageUploader
  has_many :order
end
