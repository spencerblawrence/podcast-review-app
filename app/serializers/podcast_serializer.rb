class PodcastSerializer < ActiveModel::Serializer
  attributes :id, :name, :publisher, :description, :link
end
