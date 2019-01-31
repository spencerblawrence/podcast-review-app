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

user_list = [
  [ "bob@gmail.com", "password", "password" ],
  [ "frank@gmail.com", "password", "password" ],
  [ "mary@gmail.com", "password", "password" ],
  [ "jane@gmail.com", "password", "password" ]
]

user_list.each do |email, password, password_confirmation|
  User.create( email: email, password: password, password_confirmation: password_confirmation )
end

pop_culture_happy_hour = Podcast.create!(name: "Pop Culture Happy Hour", publisher: "NPR", description: "Pop Culture Happy Hour is a fun and freewheeling chat about the latest movies, television, books, comics and music.", link: "https://www.npr.org/podcasts/510282/pop-culture-happy-hour", image: "https://s3.amazonaws.com/podcast-review-app-development/podcast-images/pchh.jpg")
the_daily = Podcast.create!(name: "The Daily", publisher: "The New York Times", description: "This is how the news should sound. Twenty minutes a day, five days a week, hosted by Michael Barbaro and powered by New York Times journalism.", link: "https://www.nytimes.com/column/the-daily", image: "https://s3.amazonaws.com/podcast-review-app-development/podcast-images/thedaily.png")
percent_invisible = Podcast.create!(name: "99% Invisible", publisher: "PRX", description: "99% Invisible is about all the thought that goes into the things we don’t think about — the unnoticed architecture and design that shape our world.", link: "https://99percentinvisible.org/", image: "https://s3.amazonaws.com/podcast-review-app-development/podcast-images/invisible.png")
radio_lab = Podcast.create!(name: "Radiolab", publisher: "WNYC", description: "Since 2002, Radiolab has been devoted to investigating a strange world.", link: "https://www.wnycstudios.org/shows/radiolab", image: "https://s3.amazonaws.com/podcast-review-app-development/podcast-images/radiolab.png")
dirty_john = Podcast.create!(name: "Dirty John", publisher: "Los Angeles Times", description: "Debra Newell is a successful interior designer. She meets John Meehan, a handsome man who seems to check all the boxes: attentive, available, just back from a year in Iraq with Doctors Without Borders. But her family doesn’t like John, and they get entangled in an increasingly complex web of love, deception, forgiveness, denial, and ultimately, survival. Reported and hosted by Christopher Goffard from the L.A. Times.", link: "https://wondery.com/shows/dirty-john/", image: "https://s3.amazonaws.com/podcast-review-app-development/podcast-images/dirtyjohn.jpeg")
the_bill_simmons_podcast = Podcast.create!(name: "The Bill Simmons Podcast", publisher: "The Ringer", description: "HBO and The Ringer's Bill Simmons hosts the most downloaded sports podcast of all time, with a rotating crew of celebrities, athletes, and media staples, as well as mainstays like Cousin Sal, Joe House, and a slew of other friends and family members who always happen to be suspiciously available.", link: "https://art19.com/shows/the-bill-simmons-podcast", image: "https://s3.amazonaws.com/podcast-review-app-development/podcast-images/the-bill-simmons-podcast.jpg")
clublife = Podcast.create!(name: "CLUBLIFE", publisher: "Tiësto", description: "Subscribe to CLUBLIFE by Tiësto for an hour of the best club tracks from around the world with your favorite DJ. For more info about Tiësto please visit www.tiesto.com", link: "https://www.tiesto.com/", image: "https://s3.amazonaws.com/podcast-review-app-development/podcast-images/clublife.jpg")
ted_talks_daily = Podcast.create!(name: "TED Talks Daily", publisher: "TED", description: "Want TED Talks on the go? Every weekday, this feed brings you our latest talks in audio format. Hear thought-provoking ideas on every subject imaginable -- from Artificial Intelligence to Zoology, and everything in between -- given by the world's leading thinkers and doers. This collection of talks, given at TED and TEDx conferences around the globe, is also available in video format.", link: "https://www.ted.com/talks", image: "https://s3.amazonaws.com/podcast-review-app-development/podcast-images/ted-talks-daily.jpg")
hidden_brain = Podcast.create!(name: "Hidden Brain", publisher: "NPR", description: "Shankar Vedantam uses science and storytelling to reveal the unconscious patterns that drive human behavior, shape our choices and direct our relationships.", link: "https://www.npr.org/series/423302056/hidden-brain", image: "https://s3.amazonaws.com/podcast-review-app-development/podcast-images/hidden-brain.jpg")
the_tim_ferriss_show = Podcast.create!(name: "The Tim Ferriss Show", publisher: "Tim Ferriss", description: "Tim Ferriss is a self-experimenter and bestselling author, best known for The 4-Hour Workweek, which has been translated into 40+ languages. Newsweek calls him \"the world's best human guinea pig,\" and The New York Times calls him \"a cross between Jack Welch and a Buddhist monk.\" In this show, he deconstructs world-class performers from eclectic areas (investing, chess, pro sports, etc.), digging deep to find the tools, tactics, and tricks that listeners can use", link: "https://tim.blog/podcast/", image: "https://s3.amazonaws.com/podcast-review-app-development/podcast-images/the-tim-ferriss-show.jpg")

pop_culture_happy_hour_review_1 = Review.create!(
  body: "I was surprised to see this had not been reviewed as never a week goes by where I don't look forward to listening to this podcast and couldn't imagine other NPR listeners didn't feel the same. This podcast provides a great insight to movie making from all aspects; producers, directors, writers and actors. Every weeks is different and hugely interesting and entertaining. Of course there are the critics but there are always critics... Have a listen!",
  rating: 5,
  podcast: pop_culture_happy_hour,
  user_id: 1)

the_bill_simmons_podcast_review_1 = Review.create!(
  body: "I really like this podcast from Bill Simmons, as an active listener, he gives insightful thought in conversing with many different celebrities and also athletes. I like how he pitches himself and also his enthusiasm.",
  rating: 4,
  podcast: the_bill_simmons_podcast,
  user_id: 1)

the_bill_simmons_podcast_review_2 = Review.create!(
  body: "Bill Simmons really presents his character really well over the course of these episodes. I like to hear him talk about different aspects of the sports world and his personality draws me to him. Really enjoy this podcast!",
  rating: 5,
  podcast: the_bill_simmons_podcast,
  user_id: 1)

the_tim_ferriss_show_review_1 = Review.create!(
  body: "It's in the in-between that makes this show amazing. The Waitzkin interview blew me away, I went out, bought the book and listened to the whole thing in 2 days. Amazing ammo for delving into the mindset of high performers. Someone once said, ‘you are the average of the people you surround yourself with.’ Well, listening to this has helped me surround myself with amazing high performers doing big things in the world.",
  rating: 5,
  podcast: the_tim_ferriss_show,
  user_id: 1)

clublife_review_1 = Review.create!(
  body: "This podcast is just great. A brand new episode every week with some great song selections. If there was one thing I dislike, it would be that the first 4 episodes of the podcast lets you skip from track to track and the newer podcasts dont. I myself like to know the artist and track title as the podcast plays through from beginning to end. Hopefully they'll bring that feature back! Other than that....GREAT!",
  rating: 5,
  podcast: clublife,
  user_id: 1)

clublife_review_2 = Review.create!(
  body: "Thank you for giving your fans an opportunity to enjoy these heart pumping; hand raising; all around feel good mixes and for all your tireless efforts and showmanship of what it really means to be a professional DJ/Producer!! MIAMI LOVES YOU.....",
  rating: 5,
  podcast: clublife,
  user_id: 1)

clublife_review_3 = Review.create!(
  body: "Tiesto each week! Awesome - great shows! Thanks Tiesto",
  rating: 4,
  podcast: clublife,
  user_id: 1)

ted_talks_daily_review_1 = Review.create!(
  body: "Perfect podcast not tied to the current events. Very accomplished people in different areas talking about issues that interest them. Pretty much all the speakers have been great. Perfect food for thought for generally curious people. There is the same podcast in VIDEO format.",
  rating: 5,
  podcast: ted_talks_daily,
  user_id: 1)

ted_talks_daily_review_2 = Review.create!(
  body: "These are some of the greatest minds with awesome insights on a variety of subjects, many with performances that thrill and delight the imagination. Very high quality production and content!",
  rating: 5,
  podcast: ted_talks_daily,
  user_id: 1)

ted_talks_daily_review_3 = Review.create!(
  body: "Don't take my word, simply sample a few (3 is the suggested sample) and consider folks are either invited to this event or pay a bundle to soak in theese ideas. Audio often ample, video a plus.",
  rating: 5,
  podcast: ted_talks_daily,
  user_id: 1)

hidden_brain_review_1 = Review.create!(
  body: "Although this podcast covers extremely fascinating topics, it lacks depth and fails to measure up to its fellow podcasts.",
  rating: 3,
  podcast: hidden_brain,
  user_id: 1)

hidden_brain_review_2 = Review.create!(
  body: "Turned out the previews was the best part on the show. The forced humor was nauseating and the campy show tune at the end was 4 minutes of my life I'll never get back. I kept hoping it would get better but it just went from bad to horrible. I can't even stick around to see if ep2 will be any better as it just left me meh.",
  rating: 1,
  podcast: hidden_brain,
  user_id: 1)
