class Booking < ApplicationRecord
  belongs_to :day
  belongs_to :activity
end
