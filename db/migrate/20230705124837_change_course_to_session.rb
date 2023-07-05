class ChangeCourseToSession < ActiveRecord::Migration[7.0]
  def change
    drop_table :courses_subscriptions

    create_join_table :sessions, :subscriptions do |t|
      t.index [:session_id, :subscription_id]
      t.index [:subscription_id, :session_id]
    end
  end
end
