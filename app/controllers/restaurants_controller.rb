class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[ show ]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end
