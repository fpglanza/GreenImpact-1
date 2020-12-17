class AddThingsToColumn < ActiveRecord::Migration[6.0]
  
  def up
    change_table :offers do |t|
      t.change :photo, :string, array: true, default: []
    end
  end

  def down
    change_table :offers do |t|
      t.change :photo, :string
    end
  end
end

