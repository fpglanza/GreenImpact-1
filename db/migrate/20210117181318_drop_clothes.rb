class DropClothes < ActiveRecord::Migration[6.0]
  def change
    drop_table :clothes
  end
end
