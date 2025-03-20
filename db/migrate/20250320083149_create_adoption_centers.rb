class CreateAdoptionCenters < ActiveRecord::Migration[7.2]
  def change
    create_table :adoption_centers do |t|
      t.string :name
      t.text :address
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
