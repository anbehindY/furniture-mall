class Api::V1::FurnituresController < ApplicationController
  # before_action :authenticate_user!

  def index
    @furnitures = Furniture.all
    render json: @furnitures
  end

  def show
    furniture = Furniture.find(params[:id])
    render json: furniture
  end

  def create
    @furniture = Furniture.new(furniture_params)

    if @furniture.save
      render json: { status: 'Success', message: 'Furniture created successfully' }, status: :created
    else
      render json: { errors: @furniture.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def furniture_params
    params.require(:furniture).permit(:name, :description, :warranty, :price, :image)
  end
end
