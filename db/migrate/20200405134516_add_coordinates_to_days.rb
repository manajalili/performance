class AddCoordinatesToDays < ActiveRecord::Migration[5.2]
  def change
    add_column :days, :latitude, :float
    add_column :days, :longitude, :float
  end
end
