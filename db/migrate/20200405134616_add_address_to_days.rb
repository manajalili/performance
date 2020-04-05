class AddAddressToDays < ActiveRecord::Migration[5.2]
  def change
    add_column :days, :address, :string
  end
end
