# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2025_03_20_083256) do
  create_table "adoption_centers", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.string "city"
    t.string "state"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dog_adoption_centers", force: :cascade do |t|
    t.integer "dog_id", null: false
    t.integer "adoption_center_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["adoption_center_id"], name: "index_dog_adoption_centers_on_adoption_center_id"
    t.index ["dog_id"], name: "index_dog_adoption_centers_on_dog_id"
  end

  create_table "dog_breed_assignments", force: :cascade do |t|
    t.integer "dog_id", null: false
    t.integer "dog_breed_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dog_breed_id"], name: "index_dog_breed_assignments_on_dog_breed_id"
    t.index ["dog_id"], name: "index_dog_breed_assignments_on_dog_id"
  end

  create_table "dog_breeds", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_dog_breeds_on_name", unique: true
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.string "breed"
    t.integer "age"
    t.text "image_url"
    t.text "description"
    t.integer "owner_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_dogs_on_owner_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_owners_on_email", unique: true
  end

  create_table "user_reviews", force: :cascade do |t|
    t.string "user_name"
    t.integer "rating"
    t.text "comment"
    t.integer "dog_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dog_id"], name: "index_user_reviews_on_dog_id"
  end

  add_foreign_key "dog_adoption_centers", "adoption_centers"
  add_foreign_key "dog_adoption_centers", "dogs"
  add_foreign_key "dog_breed_assignments", "dog_breeds"
  add_foreign_key "dog_breed_assignments", "dogs"
  add_foreign_key "dogs", "owners"
  add_foreign_key "user_reviews", "dogs"
end
