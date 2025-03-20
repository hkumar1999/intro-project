class CreateDogBreeds < ActiveRecord::Migration[7.2]
  def change
    create_table :dog_breeds do |t|
      t.string :name

      t.timestamps
    end
    add_index :dog_breeds, :name, unique: true
  end
end
