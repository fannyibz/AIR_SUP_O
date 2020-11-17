class Service < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_many :reviews, through: :bookings
  has_many_attached :photos
end
