class Address < ApplicationRecord
  belongs_to :user

  def to_s
  	"#{street1}, #{street2}, #{city}, #{state}, #{pincode}"
  end

end
