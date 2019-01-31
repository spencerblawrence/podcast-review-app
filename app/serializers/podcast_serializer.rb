class PodcastSerializer < ActiveModel::Serializer
  attributes :id, :name, :publisher, :description, :link, :image, :user_id

  has_many :reviews

  def user_id
    if current_user != nil
      return current_user.id
    end
  end
end
