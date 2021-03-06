class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.find(params[:id])
    @restaurant = Restaurant.new(restaurant_params)
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :addess, :phone_number, :category)
  end

end
