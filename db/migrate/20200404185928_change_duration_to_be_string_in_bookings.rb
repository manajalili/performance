class ChangeDurationToBeStringInBookings < ActiveRecord::Migration[5.2]
  def change
    change_column :bookings, :duration, :string
  end
end
