class Room < ApplicationRecord
    has_many :saved_rooms
    has_many :users, through: :saved_rooms
    has_many :room_furnitures, through: :saved_rooms 
end
