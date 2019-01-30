require 'rails_helper'


RSpec.describe Api::V1::ReviewsController, type: :controller do
  describe 'POST#create' do
    let!(:podcast) { Podcast.create!(name: "Radiolab", publisher: "WNYC", description: "Since 2002, Radiolab has been devoted to investigating a strange world.", link: "https://www.wnycstudios.org/shows/radiolab") }
    let!(:review) { {review: {body: "Such an amazing podcast. Definitely recommend it", rating: 5, podcast_id: podcast.id} } }
    let!(:user) { User.create( email: 'user@gmail.com', password: 'password', password_confirmation: 'password') }

    it 'add a new review to the database' do
      post_json = review
      prev_count = Review.count
      allow(controller).to receive(:current_user).and_return(user)
      post(:create, params: post_json)
      expect(Review.count).to eq(prev_count + 1)
    end

    it 'return the new review as json' do
     post :create, params: review

     response_body_json = JSON.parse(response.body)

     expect(response.status).to eq 200
     expect(response.content_type).to eq 'application/json'

   end

  end
end
