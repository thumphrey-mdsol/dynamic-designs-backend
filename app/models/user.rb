class User < ApplicationRecord
    has_many :saved_rooms
    has_many :rooms, through: :saved_rooms
    has_many :room_furnitures, through: :saved_rooms 
end
