class RestaurantsController < ApplicationController
  protect_from_forgery

  def index
    @restaurants = Restaurant.all
  end

  # def new
  #   @restaurant = Restaurant.new
  # end

  def create
    @restaurant = Restaurant.new(params[:restaurant])
    if @restaurant.save
      redirect_to @restaurant
    end
  end 

  def show
    @restaurant = Restaurant.find_by_id(params[:id])
    @review = @restaurant.reviews.build
    # @review = Review.new
    # if @restaurant.nil?
    #   @restaurants = Restaurant.find(:all)
    #   render "index"
    # end
  end

end