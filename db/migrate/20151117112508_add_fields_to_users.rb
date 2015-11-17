class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :birth_date, :date
    add_column :users, :description, :string
    add_column :users, :adress, :string
    add_column :users, :photo, :string
  end
end
