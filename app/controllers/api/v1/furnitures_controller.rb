class Api::V1::FurnituresController < ApplicationController
  before_action :authenticate_user!

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

   def destroy
    @furniture = Furniture.find(params[:id])

    if @furniture.destroy
      render json: { status: 'Success', message: 'Furniture deleted sucessfully' }, status: :ok
    else
      render json: { status: 'Failed', message: 'Failed to delete furniture' }, status: :bad_request
    end
  end

  def furniture_params
    params.require(:furniture).permit(:name, :description, :warranty, :price, :image, :user_id)
  end
end
