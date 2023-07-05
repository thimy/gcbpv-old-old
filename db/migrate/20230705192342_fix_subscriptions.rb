class FixSubscriptions < ActiveRecord::Migration[7.0]
  def change
    create_join_table :courses, :subscriptions do |t|
      t.index [:course_id, :subscription_id]
      t.index [:subscription_id, :course_id]
    end
  end
end
