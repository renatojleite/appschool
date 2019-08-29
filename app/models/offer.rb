class Offer < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :deals, dependent: :destroy
  mount_uploader :photo, PhotoUploader

  # include PgSearch::Model
  # pg_search_scope :search_home,
  #   against: [ :name, :description ],
  #   associated_against: {
  #     category: [ :name ]
  #   },
  #   using: {
  #     tsearch: { prefix: true } # <-- now `superman batm` will return something!
  #   }

end
