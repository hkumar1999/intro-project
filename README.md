# Dog Adoption App

## Project Description
This is a **Ruby on Rails** application for dog adoption, using real-time dog images, breed data, and adoption center information.

## Data Sources
We are using three data sources:
1. Dog CEO API** - Provides random dog images and breed details.  
   API Endpoint: `https://dog.ceo/api/breeds/image/random`
   Response Format: JSON  
2. Faker Gem** - Generates fake dog owners and user-generated reviews.
3. CSV Dataset** - Stores real-world adoption center locations.

---

##Database Schema Overview
This project will have **seven** main database tables:

 Table Name           Description 
**Dogs**           | Stores dog details (name, breed, age, image_url, description, owner_id) |
**Owners**         | Dog owners (name, email, phone, city) |
**UserReviews**    | User-generated dog reviews (user_name, rating, comment, dog_id) |
**AdoptionCenters** | List of adoption centers (name, address, city, state, country) |
**DogAdoptionCenters** | Many-to-Many table linking Dogs ↔ Adoption Centers |
**DogBreeds** | Stores breed names |
**DogBreedAssignments** | Many-to-Many table linking Dogs ↔ Breeds |

---

## Data Relationships
- **One-to-Many:** An **Owner** has many **Dogs**.
- **One-to-Many:** A **Dog** has many **User Reviews**.
- **Many-to-Many:** A **Dog** can be in multiple **Adoption Centers** (via `DogAdoptionCenters` table).
- **Many-to-Many:** A **Dog** can belong to multiple **Breeds** (via `DogBreedAssignments` table).



---

## 🔗 API Documentation
- **Dog CEO API**: [https://dog.ceo/dog-api/](https://dog.ceo/dog-api/)


