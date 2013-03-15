class ReviewsController < ApplicationController
  protect_from_forgery

  def show
    @restaurant = Restaurant.find_by_id(params[:restaurant_id])
    @review = @restaurant.reviews.find(params[:id])
  end

end
