class RemoveUselessColumns < ActiveRecord::Migration[7.0]
  def change
    remove_column :instrument_classes, :class_day
    remove_column :instrument_classes, :start_time
    remove_column :instrument_classes, :end_time
    
    remove_column :d_classes, :class_day
    remove_column :d_classes, :start_time
    remove_column :d_classes, :end_time

    remove_column :events, :address_first
    remove_column :events, :address_second
    remove_column :events, :street
    add_column :events, :address, :string

    remove_column :plans, :awakening_price
    remove_column :plans, :kids_discovery_price
    remove_column :plans, :discovery_price

    remove_reference :subscriptions, :instrument_class
    remove_reference :subscriptions, :workshop

    add_column :students, :email, :string
  end
end
