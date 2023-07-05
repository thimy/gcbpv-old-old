class AddDayToSlots < ActiveRecord::Migration[7.0]
  def change
    add_column :slots, :day, :string
    add_column :slots, :description, :string
    add_column :courses, :description, :string

    drop_table :courses_sessions
    drop_table :sessions_subscriptions
    drop_table :sessions

    create_join_table :slots, :subscriptions do |t|
      t.index [:slot_id, :subscription_id]
      t.index [:subscription_id, :slot_id]
    end
  end
end
