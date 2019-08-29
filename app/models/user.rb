class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :deals
  has_many :offers
  mount_uploader :photo, PhotoUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
