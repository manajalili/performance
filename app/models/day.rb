class Day < ApplicationRecord
  has_many :activities, through: :bookings
  has_many :bookings, dependent: :destroy
end
