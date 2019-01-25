require 'rails_helper'

feature "visitor sees a list of all genres" do
  scenario "sees a list of genres" do
    genre_1 = Genre.create(name: "Business")
    genre_2 = Genre.create(name: "News")

    visit genres_path

    expect(page).to have_content genre_1.name
    expect(page).to have_link genre_2.name
  end
end
