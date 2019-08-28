class Offer < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :deals, dependent: :destroy
end
