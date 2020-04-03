class Day < ApplicationRecord
  has_many :activities, through: :bookings
  has_many :bookings, dependent: :destroy
  has_many_attached :photos
end
