class SavedRoom < ApplicationRecord
    belongs_to :user
    belongs_to :room 
    has_many :room_furnitures
    has_many :furnitures, through: :room_furnitures
end
