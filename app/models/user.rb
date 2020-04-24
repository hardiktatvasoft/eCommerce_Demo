class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :avatar, UserAvatarUploader
	# User Avatar Validation 
  validates_integrity_of :avatar
  validates_processing_of :avatar
  has_many :order

  
end
