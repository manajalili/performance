class AddDayIdToBookings < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :day, foreign_key: true
  end
end
