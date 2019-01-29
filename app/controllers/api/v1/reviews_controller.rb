class Api::V1::ReviewsController < ApplicationController

  def new
    binding.pry
  end

  def create
    binding.pry
    review = Review.create(review_params)

    if review.save
      render json: review
    else
      render json: { error: review.errors }
    end
  end

  private
  def review_params
    params.require(:review).permit(:rating, :body)
  end
end
