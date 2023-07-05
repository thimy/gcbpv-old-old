class CreateAvailabilities < ActiveRecord::Migration[7.0]
  def change
    create_table :availabilities do |t|
      t.references :teacher, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true
      t.time :start_time
      t.time :end_time
      t.references :instrument_class, null: false, foreign_key: true

      t.timestamps
    end

    add_reference :sessions, :availabilities
    remove_reference :sessions, :instrument_class
    remove_reference :sessions, :city
    remove_column :sessions, :start_time
    remove_column :sessions, :end_time
    remove_column :sessions, :day
  end
end
