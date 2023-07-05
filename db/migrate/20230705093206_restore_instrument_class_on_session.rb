class RestoreInstrumentClassOnSession < ActiveRecord::Migration[7.0]
  def change
    remove_reference :availabilities, :instrument_class

    rename_table :instrument_classes, :courses
    rename_table :availabilities, :slots

    add_reference :sessions, :slot
    remove_reference :sessions, :availabilities
    create_join_table :courses, :sessions do |t|
      t.index [:course_id, :session_id]
      t.index [:session_id, :course_id]
    end

    drop_table :instrument_classes_seasons
    drop_table :instrument_classes_subscriptions

    create_join_table :courses, :seasons do |t|
      t.index [:course_id, :season_id]
      t.index [:season_id, :course_id]
    end

    create_join_table :courses, :subscriptions do |t|
      t.index [:course_id, :subscription_id]
      t.index [:subscription_id, :course_id]
    end
  end
end
