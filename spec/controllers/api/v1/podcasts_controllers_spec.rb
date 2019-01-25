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

  describe 'POST#create' do
    let!(:data) { { name: "Radiolab", publisher: "WNYC", description: "Since 2002, Radiolab has been devoted to investigating a strange world.", link: "https://www.wnycstudios.org/shows/radiolab" } }

    it 'add a new podcast to the database' do
      expect{post :create, body: data.to_json}.to change { Podcast.count }.by 1
    end

    it 'return the new podcast as json' do
      post :create, body: data.to_json

      response_body_json = JSON.parse(response.body)

      expect(response.status).to eq 200
      expect(response.content_type).to eq 'application/json'

      expect(response_body_json["podcast"]["name"]).to eq data[:name]
      expect(response_body_json["podcast"]["publisher"]).to eq data[:publisher]
      expect(response_body_json["podcast"]["description"]).to eq data[:description]
      expect(response_body_json["podcast"]["link"]).to eq data[:link]
    end
  end
end
