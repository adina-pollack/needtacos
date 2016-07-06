class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
  def show
    @restaurant = Restaurant.find(params[:id])
  end
  def new
    redirect_to root_path unless @current_user
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @restaurant = @neighborhood.restaurants.new
  end
  def create
    redirect_to root_path unless @current_user
   @neighborhood = Neighborhood.find(params[:neighborhood_id])
   @restaurant = Restaurant.create!(restaurant_params.merge(neighborhood: @neighborhood))
   redirect_to neighborhood_restaurant_path(@neighborhood, @restaurant)
  end
  def edit
    redirect_to root_path unless @current_user
    @restaurant = Restaurant.find(params[:id])
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
  end
  def update
    redirect_to root_path unless @current_user
    @restaurant = Restaurant.find(params[:id])
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @restaurant.update(restaurant_params.merge(neighborhood: @neighborhood))
    redirect_to neighborhood_restaurant_path(@restaurant.neighborhood, @restaurant)
  end
  def destroy
    redirect_to root_path unless @current_user
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @restaurant = @neighborhood.restaurants.find(params[:id])
    @restaurant.destroy
    redirect_to @neighborhood
  end
  def add_favorite
    @restaurant = Restaurant.find(params[:id])
    @favorite = Favorite.create(restaurant: @restaurant, user: @current_user)
    @neighborhood = @restaurant.neighborhood
    redirect_to @neighborhood
  end
  def remove_favorite
    @restaurant = Restaurant.find(params[:id])
    @favorite = Favorite.find_by(restaurant: @restaurant, user: @current_user)
    @favorite.destroy
    @neighborhood = @restaurant.neighborhood
    redirect_to @neighborhood
  end
  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :website)
  end
end
