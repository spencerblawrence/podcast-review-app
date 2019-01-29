require 'rails_helper'

RSpec.describe Api::V1::PodcastsController, type: :controller do

  describe 'GET#index' do
    let!(:radiolab) { Podcast.create!(name: "Radiolab", publisher: "WNYC", description: "Since 2002, Radiolab has been devoted to investigating a strange world.", link: "https://www.wnycstudios.org/shows/radiolab") }
    let!(:ninetyninepi) { Podcast.create!(name: "99% Invisible", publisher: "PRX", description: "99% Invisible is about all the thought that goes into the things we don’t think about — the unnoticed architecture and design that shape our world.", link: "https://99percentinvisible.org/") }

    it 'returns successful response with json-formatted data' do
      get :index

      expect(response.status).to eq 200
      expect(response.content_type).to eq 'application/json'
    end

    it 'returns all podcasts in the database' do
      get :index
      returned_json = JSON.parse(response.body)

      expect(returned_json["podcasts"].length).to eq 2

      expect(returned_json["podcasts"][0]["name"]).to eq radiolab.name
      expect(returned_json["podcasts"][0]["publisher"]).to eq radiolab.publisher
      expect(returned_json["podcasts"][0]["description"]).to eq radiolab.description
      expect(returned_json["podcasts"][0]["link"]).to eq radiolab.link
      expect(returned_json["podcasts"][1]["name"]).to eq ninetyninepi.name
      expect(returned_json["podcasts"][1]["publisher"]).to eq ninetyninepi.publisher
      expect(returned_json["podcasts"][1]["description"]).to eq ninetyninepi.description
      expect(returned_json["podcasts"][1]["link"]).to eq ninetyninepi.link
    end
  end
end
