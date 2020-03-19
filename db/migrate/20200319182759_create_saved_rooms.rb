class CreateSavedRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :saved_rooms do |t|
      t.integer :length
      t.integer :width
      t.integer :user_id
      t.integer :room_id

      t.timestamps
    end
  end
end
