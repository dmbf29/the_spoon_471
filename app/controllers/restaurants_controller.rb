class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    # this is for the form
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if
      redirect_to restaurant_path(@restaurant)
    else
      # show the form page again
      # render 'new.html.erb'
      render :new
    end
  end

  def edit
  end

  def update
    # update from the form strong params
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path(@restaurant)
    else
      render :edit
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :stars, :address)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
