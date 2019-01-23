class PodcastsController < ApplicationController
  def index
    @podcasts = Podcast.all
  end
end
