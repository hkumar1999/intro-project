class DogBreed < ApplicationRecord
    has_many :dog_breed_assignments, dependent: :destroy
    has_many :dogs, through: :dog_breed_assignments
  
    validates :name, uniqueness: true
  end
  