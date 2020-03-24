class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :duration
      t.day :reference
      t.activity :reference

      t.timestamps
    end
  end
end
