class Api::V1::FurnitureController < ApplicationController
    def show
        furniture = Furniture.find(params[:id])
        render json: furniture
    end
end
