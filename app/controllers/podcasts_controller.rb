class PodcastsController < ApplicationController
  before_action :authorize_user, except: [:index, :show, :new, :create]
  before_action :authorize_admin, only: [:edit]

  def index
    @podcasts = Podcast.all
  end

  def show
    @podcast = Podcast.find(params[:id])
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

  def edit
    @podcast = Podcast.find(params[:id])
  end

  def update
    @podcast = Podcast.find(params[:id])
    if @podcast.update(podcast_params)
      redirect_to @podcast, notice: "Podcast was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @podcast = Podcast.find(params[:id])
    @podcast.destroy
    redirect_to podcasts_path, notice:  "Podcast was successfully deleted."
  end

  private
  def podcast_params
    params.require(:podcast).permit(:name, :description, :publisher, :link, :image)
  end

  def authorize_user
    if current_user == nil
      flash[:notice] = "You do not have access to this page."
      redirect_to root_path
    end
  end

  def authorize_admin
    if !current_user.admin?
      flash[:notice] = "You do not have access to this page."
      redirect_to root_path
    end
  end
end
