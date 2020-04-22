class Product < ApplicationRecord
  belongs_to :category
  mount_uploader :image, ProductImageUploader
end
