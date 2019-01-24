class Review < ApplicationRecord
  belongs_to :podcast

  validates :rating, presence: true, inclusion: { in: 1..5 }
  validates :body, presence: true, length: { maximum: 500, minimum: 5 }
end
