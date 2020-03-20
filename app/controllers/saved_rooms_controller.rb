class SavedRoomsController < ApplicationController
    def show
        saved_room = SavedRoom.find(params[:id])
        render json: saved_room, include: [:room_furnitures]
    end

    def index
        saved_rooms = SavedRoom.all
        render json: saved_rooms, include: [:room_furnitures]
    end
end
