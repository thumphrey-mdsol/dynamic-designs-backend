class RoomFurniture < ApplicationRecord
    belongs_to :saved_room
    belongs_to :furniture
end
