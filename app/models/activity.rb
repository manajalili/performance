class Activity < ApplicationRecord
  has_many :days, through: :bookings
  has_many :bookings, dependent: :destroy
end
