class RemoveDescriptionFromActivities < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :description, :text
  end
end
