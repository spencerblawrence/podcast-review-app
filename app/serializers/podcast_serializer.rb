class PodcastSerializer < ActiveModel::Serializer
  attributes :id, :name, :publisher, :description, :link

  has_many :reviews
end
