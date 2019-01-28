class Api::V1::PodcastsController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }

  def index
    render json: Podcast.all, adapter: :json
  end

  def show
    render json: Podcast.where(id: params[:id]), adapter: :json
  end

  def create
    data = JSON.parse(request.body.read)
    new_podcast = Podcast.create(name: data["name"], publisher: data["publisher"], description: data["description"], link: data["link"])
    render json: new_podcast
  end
end
