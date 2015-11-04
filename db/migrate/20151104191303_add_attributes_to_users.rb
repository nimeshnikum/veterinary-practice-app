class AddAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :zip, :string
    add_column :users, :school_received_degree_from, :string
    add_column :users, :years_in_practice, :integer
  end
end
