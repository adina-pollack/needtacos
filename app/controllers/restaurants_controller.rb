class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
  def show
    @restaurant = Restaurant.find(params[:id])
  end
  def new
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @restaurant = @neighborhood.restaurants.new
  end
  def create
   @neighborhood = Neighborhood.find(params[:neighborhood_id])
   @restaurant = Restaurant.create!(restaurant_params.merge(neighborhood: @neighborhood))
   redirect_to neighborhood_restaurant_path(@neighborhood, @restaurant)
  end
  def edit
    @restaurant = Restaurant.find(params[:id])
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
  end
  def update
    @restaurant = Restaurant.find(params[:id])
    @neighborhood = Neighborhood.find(params[:neighborhood_id])

    @restaurant.update(restaurant_params.merge(neighborhood: @neighborhood))
    redirect_to neighborhood_restaurant_path(@restaurant.neighborhood, @restaurant)
  end
  def destroy
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @restaurant = @neighborhood.restaurants.find(params[:id])
    @restaurant.destroy
    redirect_to neighborhood_path(@neighborhood)
  end
  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :website)
  end
end
