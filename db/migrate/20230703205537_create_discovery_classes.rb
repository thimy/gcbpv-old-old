class CreateDiscoveryClasses < ActiveRecord::Migration[7.0]
  def change
    create_table :d_classes do |t|
      t.references :discovery, null: false, foreign_key: true
      t.references :teacher, null: false, foreign_key: true
      t.string :class_day
      t.time :start_time
      t.time :end_time
      t.boolean :archived

      t.timestamps
    end

    create_join_table :d_classes, :subscriptions do |t|
      t.index [:d_class_id, :subscription_id]
      t.index [:subscription_id, :d_class_id]
    end
  end
end
