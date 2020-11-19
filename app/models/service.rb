class Service < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_many :reviews, through: :bookings
  has_many_attached :photos
  validates :photos, presence: true
# [...]
  include PgSearch::Model

  pg_search_scope :search_by_services_name_or_hero_username,
    against: [ :name ],
    associated_against: {
      user: [ :username ]
    },
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  pg_search_scope :search_by_services_address,
    against: [ :address ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
