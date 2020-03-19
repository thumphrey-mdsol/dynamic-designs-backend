class CreateFurnitures < ActiveRecord::Migration[6.0]
  def change
    create_table :furnitures do |t|
      t.string :product_name
      t.integer :sale_price
      t.text :production_description
      t.string :image_url
      t.string :class_name
      t.integer :class_id
      t.string :pdp
      t.integer :length
      t.integer :width

      t.timestamps
    end
  end
end
