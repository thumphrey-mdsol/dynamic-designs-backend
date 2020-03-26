class AddImgUrlToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :img_url, :string
  end
end
