class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product
#  belongs_to :user

  # def self.user(value)
  # 	where(order.user)
  # end
end
