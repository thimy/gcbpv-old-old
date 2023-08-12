class AddDateTimeToDClasses < ActiveRecord::Migration[7.0]
  def change
    add_column :d_classes, :day, :string
    add_column :d_classes, :start_time, :time
    add_column :d_classes, :end_time, :time
    add_reference :d_classes, :city
  end
end
