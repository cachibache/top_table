class RestaurantsController < ApplicationController
  protect_from_forgery

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    # raise params.inspect
    @restaurant = Restaurant.new(params[:restaurant])
    if @restaurant.save
      # flash[:success] = "Added a new Restaurant"
      redirect_to @restaurant
    # else
    #   render :new
    end
  end 

  def show
    @restaurant = Restaurant.find_by_id(params[:id])
    # if @restaurant.nil?
    #   @restaurants = Restaurant.find(:all)
    #   render "index"
    # end
  end

end