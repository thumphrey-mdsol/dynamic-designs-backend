class FurnituresController < ApplicationController
    def show
        furniture = Furniture.find(params[:id])
        render json: furniture
    end

    def index
        furnitures = Furniture.all
        render json: furnitures
    end
    
    
end
