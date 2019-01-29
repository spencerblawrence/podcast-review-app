class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :body, :user
  # attributes :id, :rating, :body, :user_id, :podcast_id

  # belongs_to :user
  belongs_to :podcast

  def user
    object.user
  end
end
