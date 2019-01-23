require 'rails_helper'

feature "visitor sees a list of podcasts" do
  scenario "sees a list of podcasts and link for new podcast" do
    serial = Podcast.create(name: "Serial", publisher: "WBEZ", description: "Investigative journalism", link: "https://serialpodcast.org/")
    reply_all = Podcast.create(name: "Reply All", publisher: "Gimlet Media", description: "Podcast about the internet", link: "https://www.gimletmedia.com/reply-all")

    visit podcasts_path

    expect(page).to have_content serial.name
    expect(page).to have_link reply_all.name
  end
end
