class CreateRoomFurnitures < ActiveRecord::Migration[6.0]
  def change
    create_table :room_furnitures do |t|
      t.integer :room_id
      t.integer :furniture_id
      t.string :starting_coordinates

      t.timestamps
    end
  end
end
