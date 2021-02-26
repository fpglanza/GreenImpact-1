class AddTimerToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :timer_start_time, :time
  end
end
