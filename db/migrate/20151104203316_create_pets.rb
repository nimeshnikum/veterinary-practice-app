class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name_of_pet
      t.integer :user_id
      t.string :type_of_pet
      t.string :breed
      t.integer :age
      t.integer :weight
      t.date :date_last_visited

      t.timestamps null: false
    end
    add_index :pets, :user_id
  end
end
