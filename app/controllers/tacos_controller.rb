class TacosController < ApplicationController
  def index
    @tacos = Taco.all
  end
  def show
    @taco = @taco.find(params[:id])
  end
  def new
    redirect_to root_path unless @current_user
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @restaurant = Restaurant.find(params[:restaurant_id])
    @taco = @restaurant.tacos.new
  end
  def create
    redirect_to root_path unless @current_user
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @restaurant = Restaurant.find(params[:restaurant_id])
    @taco = @restaurant.tacos.create!(taco_params)
    redirect_to neighborhood_restaurant_path(@neighborhood, @restaurant)
  end
  def edit
    redirect_to root_path unless @current_user
    @taco = Taco.find(params[:id])
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
  def update
    redirect_to root_path unless @current_user
    @taco = Taco.find(params[:id])
    @restaurant = Restaurant.find(params[:restaurant_id])
    @taco.update(taco_params.merge(restaurant: @restaurant))
    redirect_to neighborhood_restaurant_path(@restaurant.neighborhood, @restaurant)
  end
  def destroy
    redirect_to root_path unless @current_user
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @restaurant = @neighborhood.restaurants.find(params[:restaurant_id])
    @taco = @restaurant.tacos.find(params[:id])
    @taco.destroy
    redirect_to neighborhood_restaurant_path(@restaurant.neighborhood, @restaurant)
  end
  def add_favorite
    @taco = Taco.find(params[:id])
    @favorite = Favorite.create(taco: @taco, user: @current_user)
    @restaurant = @taco.restaurant
    @neighborhood = @restaurant.neighborhood
    redirect_to neighborhood_restaurant_path(@restaurant.neighborhood, @restaurant)
  end
  def remove_favorite
    @taco = Taco.find(params[:id])
    @favorite = Favorite.find_by(taco: @taco, user: @current_user)
    @favorite.destroy
    @restaurant = @taco.restaurant
    @neighborhood = @restaurant.neighborhood
    redirect_to neighborhood_restaurant_path(@restaurant.neighborhood, @restaurant)
  end
  private
  def taco_params
    params.require(:taco).permit(:name, :description)
  end
end
