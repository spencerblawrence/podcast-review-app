class Api::V1::ReviewsController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }

  def create
    review = Review.new(review_params)
    review.user = current_user
    # review.podcast_id = p
    # binding.pry

    if review.save
      render json: review
    else
      # binding.pry
      render json: { error: review.errors }
    end
  end

  private
  def review_params
    params.require(:review).permit(:rating, :body, :podcast_id)
  end
end
