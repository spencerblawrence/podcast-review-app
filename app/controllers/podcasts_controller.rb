class PodcastsController < ApplicationController
  def index
    @podcasts = Podcast.all
  end

  def new
    @podcast = Podcast.new
  end

  def create
    @podcast = Podcast.new(podcast_params)

    if @podcast.save
      redirect_to @podcast
      flash[:notice] = "Podcast added successfully"
    else
      render :'new'
    end
  end

  def show
    @podcast = Podcast.find(params[:id])
  end

  private
  def podcast_params
    params.require(:podcast).permit(:name, :description, :publisher, :link, :image)
  end
end
