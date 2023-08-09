class CreateSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :sessions do |t|
      t.references :course, null: false, foreign_key: true
      t.references :subscription, null: false, foreign_key: true
      t.references :slot, null: false, foreign_key: true
      t.time :session_time

      t.timestamps
    end
    drop_table :slots_subscriptions
  end
end
