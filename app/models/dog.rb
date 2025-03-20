class Dog < ApplicationRecord
  belongs_to :owner
  has_many :user_reviews, dependent: :destroy
  has_many :dog_adoption_centers, dependent: :destroy
  has_many :adoption_centers, through: :dog_adoption_centers
  has_many :dog_breed_assignments, dependent: :destroy
  has_many :dog_breeds, through: :dog_breed_assignments

  validates :name, :breed, :age, :image_url, :description, presence: true
end
