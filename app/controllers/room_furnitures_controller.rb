class RoomFurnituresController < ApplicationController
    def show
        room_furniture = RoomFurniture.find(params[:id])
        render json: room_furniture
    end

    def index
        room_furnitures = RoomFurniture.all
        render json: room_furnitures
    end
end
