class Podcast < ApplicationRecord
  validates :name, presence: true
  validates :publisher, presence: true
  validates :description, presence: true
  validates :link, :format => URI::regexp(%w(http https))

end
