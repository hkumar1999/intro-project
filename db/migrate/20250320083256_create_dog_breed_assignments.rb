class CreateDogBreedAssignments < ActiveRecord::Migration[7.2]
  def change
    create_table :dog_breed_assignments do |t|
      t.references :dog, null: false, foreign_key: true
      t.references :dog_breed, null: false, foreign_key: true

      t.timestamps
    end
  end
end
