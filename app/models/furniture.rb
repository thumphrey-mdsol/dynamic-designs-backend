class Furniture < ApplicationRecord
    has_many :room_furnitures
    has_many :saved_rooms, through: :room_furnitures
end
