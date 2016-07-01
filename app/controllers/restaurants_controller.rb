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
   @neighborhood = Neighborhood.find(params[:neighborhood_id])
   @restaurant = @neighborhood.restaurants.create(restaurant_params)
   redirect_to neighborhood_path(@neighborhood)
  end
  def edit
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @restaurant = @neighborhood.restaurants.find(params[:id])
  end
  def update
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @restaurant = @Neighborhood.restaurants.find(params[:id])
    @restaurant.update(restaurant_params)
    redirect_to neighborhood_path(@neighborhood)
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
