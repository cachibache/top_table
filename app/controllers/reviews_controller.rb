class ReviewsController < ApplicationController
  protect_from_forgery

  # def index
  #   @review
  # end

  def create
    @restaurant = Restaurant.find_by_id(params[:restaurant_id])
    @review = @restaurant.reviews.build(params[:review])
    if @review.save
      redirect_to @restaurant
    end
  end 



  def show
    @restaurant = Restaurant.find_by_id(params[:restaurant_id])
    @review = @restaurant.reviews.find(params[:id])
  end

end
