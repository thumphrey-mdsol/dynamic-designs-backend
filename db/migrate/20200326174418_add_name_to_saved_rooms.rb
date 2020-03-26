class AddNameToSavedRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :saved_rooms, :name, :string
  end
end
