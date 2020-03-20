class CreateRoomFurnitures < ActiveRecord::Migration[6.0]
  def change
    create_table :room_furnitures do |t|
      t.integer :saved_room_id
      t.integer :furniture_id
      t.string :x_coordinate
      t.string :y_coordinate

      t.timestamps
    end
  end
end
