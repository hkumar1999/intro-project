require 'faker'
require 'open-uri'
require 'json'

# Clear existing data
Owner.destroy_all
Dog.destroy_all
UserReview.destroy_all
AdoptionCenter.destroy_all
DogAdoptionCenter.destroy_all
DogBreed.destroy_all
DogBreedAssignment.destroy_all

# Create Owners
owners = []
10.times do
  owners << Owner.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.cell_phone,
    city: Faker::Address.city
  )
end

# Create Adoption Centers
centers = []
10.times do
  centers << AdoptionCenter.create!(
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    country: Faker::Address.country
  )
end

# Create Breeds
breeds = ["Labrador Retriever", "Golden Retriever", "Bulldog", "Poodle", "Beagle"]
breed_records = breeds.map { |name| DogBreed.create!(name: name) }

# Fetch Dogs from API
puts "Fetching dog images from API..."
10.times do
  response = URI.open("https://dog.ceo/api/breeds/image/random").read
  image_url = JSON.parse(response)["message"]

  dog = Dog.create!(
    name: Faker::Creature::Dog.name,
    breed: breeds.sample,
    age: rand(1..10),
    image_url: image_url,
    description: Faker::Lorem.sentence,
    owner: owners.sample
  )

  # Assign breeds
  dog.dog_breeds << breed_records.sample
  # Assign adoption centers
  dog.adoption_centers << centers.sample
end

puts "Database seeding complete!"
