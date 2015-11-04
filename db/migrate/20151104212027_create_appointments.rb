class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :date_of_visit
      t.integer :pet_id
      t.integer :user_id
      t.boolean :requires_a_reminder
      t.string :reason_for_visit
      t.integer :vet_id

      t.timestamps null: false
    end
    add_index :appointments, :user_id
  end
end
