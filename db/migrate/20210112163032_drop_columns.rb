class DropColumns < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :full_name
    remove_column :users, :username
  end
end
