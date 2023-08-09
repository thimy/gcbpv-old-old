class AddTimeToSlotsSubscriptions < ActiveRecord::Migration[7.0]
  def change
    add_column :slots_subscriptions, :time, :time
    add_reference :users, :teacher
    add_reference :users, :student
  end
end
