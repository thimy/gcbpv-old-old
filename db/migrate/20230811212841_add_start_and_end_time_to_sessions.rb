class AddStartAndEndTimeToSessions < ActiveRecord::Migration[7.0]
  def change
    rename_column :sessions, :session_time, :start_time
    add_column :sessions, :end_time, :time
  end
end
