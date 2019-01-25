class Review < ApplicationRecord
  belongs_to :podcast
  belongs_to :user

  validates :rating, presence: true, inclusion: { in: 1..5 }
  validates :body, presence: true, length: { maximum: 2000, minimum: 5 }
end
