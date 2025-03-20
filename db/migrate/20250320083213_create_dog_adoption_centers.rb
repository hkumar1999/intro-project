class CreateDogAdoptionCenters < ActiveRecord::Migration[7.2]
  def change
    create_table :dog_adoption_centers do |t|
      t.references :dog, null: false, foreign_key: true
      t.references :adoption_center, null: false, foreign_key: true

      t.timestamps
    end
  end
end
