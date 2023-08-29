class Api::V1::FurnituresController < ApplicationController
  def show
    furniture = Furniture.find(params[:id])
    render json: furniture
  end

  def index
    @furniture = Furniture.all
    render json: @furniture
  end
end
