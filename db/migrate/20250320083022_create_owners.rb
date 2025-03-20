class CreateOwners < ActiveRecord::Migration[7.2]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :city

      t.timestamps
    end
    add_index :owners, :email, unique: true
  end
end
