class PodcastSerializer < ActiveModel::Serializer
  attributes :id, :name, :publisher, :description, :link, :image

  has_many :reviews
end
