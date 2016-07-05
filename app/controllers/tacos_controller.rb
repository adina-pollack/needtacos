class TacosController < ApplicationController
  def index
    @tacos = Taco.all
  end
  def show
    @taco = @taco.find(params[:id])
  end
  def new
    @taco = Taco.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @taco = @restaurant.tacos.create!(taco_params)
    redirect_to neighborhood_restaurant_path(@restaurant)
  end
  def edit
    # @restaurant = Restaurant.find(params[:restaurant_id])
    @taco = Taco.find(params[:id])
  end
  def update
    @taco = Taco.find(params[:id])
    # @restaurant = Restaurant.find(params[:restaurant_id])
    @taco.update(taco_params)
    redirect_to neighborhood_restaurant_path(@restaurant.neighborhood, @restaurant)
  end
  private
  def taco_params
    params.require(:taco).permit(:name, :description)
  end
end
