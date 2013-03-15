class ReviewsController < ApplicationController
  protect_from_forgery

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.build(params[:review])
    if @review.save
    #   redirect_to @restaurant
    end
  end

  def show
    @restaurant = Restaurant.find_by_id(params[:id])
    @reviews = Review.all
  end

end
