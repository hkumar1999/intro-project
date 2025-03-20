class UserReview < ApplicationRecord
  belongs_to :dog

  validates :user_name, :rating, :comment, presence: true
end
