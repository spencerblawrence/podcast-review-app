class Api::V1::PodcastsController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }

  def index
    render json: Podcast.all
  end

  def show
    render json: Podcast.where(id: params[:id])
  end

end
