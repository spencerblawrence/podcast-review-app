# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Genre.create!(name: "Arts")
Genre.create!(name: "Business")
Genre.create!(name: "Comedy")
Genre.create!(name: "Games & Hobbies")
Genre.create!(name: "Health")
Genre.create!(name: "News & Politics")
Genre.create!(name: "Sports & Recreation")
Genre.create!(name: "Technology")

pop_culture_happy_hour = Podcast.create!(name: "Pop Culture Happy Hour", publisher: "NPR", description: "Pop Culture Happy Hour is a fun and freewheeling chat about the latest movies, television, books, comics and music.", link: "https://www.npr.org/podcasts/510282/pop-culture-happy-hour")
the_daily = Podcast.create!(name: "The Daily", publisher: "The New York Times", description: "This is how the news should sound. Twenty minutes a day, five days a week, hosted by Michael Barbaro and powered by New York Times journalism.", link: "https://www.nytimes.com/column/the-daily")
percent_invisible = Podcast.create!(name: "99% Invisible", publisher: "PRX", description: "99% Invisible is about all the thought that goes into the things we don’t think about — the unnoticed architecture and design that shape our world.", link: "https://99percentinvisible.org/")
radio_lab = Podcast.create!(name: "Radiolab", publisher: "WNYC", description: "Since 2002, Radiolab has been devoted to investigating a strange world.", link: "https://www.wnycstudios.org/shows/radiolab")
dirty_john = Podcast.create!(name: "Dirty John", publisher: "Los Angeles Times", description: "Debra Newell is a successful interior designer. She meets John Meehan, a handsome man who seems to check all the boxes: attentive, available, just back from a year in Iraq with Doctors Without Borders. But her family doesn’t like John, and they get entangled in an increasingly complex web of love, deception, forgiveness, denial, and ultimately, survival. Reported and hosted by Christopher Goffard from the L.A. Times.", link: "https://wondery.com/shows/dirty-john/")
