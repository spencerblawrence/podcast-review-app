class Api::V1::PodcastsController < ApplicationController
  serialization_scope :current_user
  protect_from_forgery unless: -> { request.format.json? }

  def index
    render json: Podcast.all
  end

  def show
    render json: Podcast.find(params[:id])
  end
end
