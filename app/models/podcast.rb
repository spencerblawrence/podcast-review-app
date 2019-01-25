class Podcast < ApplicationRecord
  has_many :reviews

  validates :name, presence: true
  validates :publisher, presence: true
  validates :description, presence: true
  validates :link, :format => URI::regexp(%w(http https))
end
