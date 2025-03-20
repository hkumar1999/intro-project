class DogAdoptionCenter < ApplicationRecord
  belongs_to :dog
  belongs_to :adoption_center
end
