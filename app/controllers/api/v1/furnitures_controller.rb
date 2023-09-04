class Api::V1::FurnituresController < ApplicationController
  def show
    furniture = Furniture.find(params[:id])
    render json: furniture
  end

  def index
    @furniture = Furniture.all
    render json: @furniture
  end

   def create
    @furniture = Furniture.create(furniture_params)

     if @furniture.save
      render json: { status: 'Success', message: 'Furniture created successfully' }, status: :created
    else
      render json: { status: 'Failed', message: 'Failed to create furniture' }, status: :unprocessable_entity
    end
  end

  def furniture_params
    params.require(:furniture).permit(:name, :description, :warranty, :price, :image)
  end
end
