class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :body, :user_image

  belongs_to :user
  belongs_to :podcast

  def user_image
    object.user.profile_photo
  end
end
