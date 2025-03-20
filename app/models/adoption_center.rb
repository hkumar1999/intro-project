class AdoptionCenter < ApplicationRecord
    has_many :dog_adoption_centers, dependent: :destroy
    has_many :dogs, through: :dog_adoption_centers
  
    validates :name, :address, :city, :state, :country, presence: true
  end
  