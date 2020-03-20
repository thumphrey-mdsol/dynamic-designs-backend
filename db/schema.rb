# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_19_183054) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "furnitures", force: :cascade do |t|
    t.string "product_name"
    t.integer "sale_price"
    t.text "production_description"
    t.string "image_url"
    t.string "class_name"
    t.integer "class_id"
    t.string "pdp"
    t.integer "length"
    t.integer "width"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "room_furnitures", force: :cascade do |t|
    t.integer "saved_room_id"
    t.integer "furniture_id"
    t.string "x_coordinate"
    t.string "y_coordinate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "saved_rooms", force: :cascade do |t|
    t.integer "length"
    t.integer "width"
    t.integer "user_id"
    t.integer "room_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
