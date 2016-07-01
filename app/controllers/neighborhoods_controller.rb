class NeighborhoodsController < ApplicationController
  def index
    @neighborhoods = Neighborhood.all
  end
  def show
    @neighborhood = Neighborhood.find(params[:id])
  end
  def new
    @neighborhood = Neighborhood.new
  end
  def create
    @neighborhood = Neighborhood.create!(neighborhood_params)
      redirect_to @neighborhood
  end
  def edit
    @neighborhood = Neighborhood.find(params[:id])
  end
  def update
    @neighborhood = Neighborhood.find(params[:id])
    @neighborhood.update(post_params)
    redirect_to @neighborhood
  end
  def destroy
    @neighborhood = Neighborhood.find(params[:id])
    @neighborhood.destroy
    redirect_to neighborhoods_path
  end
  private
  def neighborhood_params
  params.require(:neighborhood).permit(:name)
  end
end
