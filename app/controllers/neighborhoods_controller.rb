class NeighborhoodsController < ApplicationController
  def index
    @neighborhoods = Neighborhood.all
  end
  def show
    @neighborhood = Neighborhood.find(params[:id])
  end
  def new
    redirect_to root_path unless @current_user
    @neighborhood = Neighborhood.new
  end
  def create
    redirect_to root_path unless @current_user
    @neighborhood = Neighborhood.create!(neighborhood_params)
    redirect_to @neighborhood
  end
  def edit
    redirect_to root_path unless @current_user
    @neighborhood = Neighborhood.find(params[:id])
  end
  def update
    redirect_to root_path unless @current_user
    @neighborhood = Neighborhood.find(params[:id])
    @neighborhood.update(neighborhood_params)
    redirect_to neighborhood_path(@neighborhood)
  end
  def destroy
    redirect_to root_path unless @current_user
    @neighborhood = Neighborhood.find(params[:id])
    @neighborhood.destroy
    redirect_to neighborhoods_path
  end
  private
  def neighborhood_params
  params.require(:neighborhood).permit(:name)
  end
end
