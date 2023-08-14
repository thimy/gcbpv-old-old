class AddDaysAsEnum < ActiveRecord::Migration[7.0]
  def up
    execute <<-SQL
      CREATE TYPE days_of_week AS ENUM ('monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday', 'tbd');
      CREATE TYPE frequency AS ENUM ('always', 'every_two_weeks', 'even_weeks', 'odd_weeks', 'once_per_month', 'six_times', 'flexible');
    SQL
    remove_column :d_classes, :day
    add_column :d_classes, :day, :days_of_week
    add_column :d_classes, :frequency, :frequency
    add_index :d_classes, :day

    remove_column :slots, :day
    add_column :slots, :day, :days_of_week
    add_column :slots, :frequency, :frequency
    add_index :slots, :day

    remove_column :workshops, :workshop_day
    add_column :workshops, :workshop_day, :days_of_week
    add_column :workshops, :frequency, :frequency
    add_index :workshops, :workshop_day
  end

  def down
    remove_column :d_classes, :day
    remove_column :d_classes, :frequency
    remove_column :slots, :day
    remove_column :slots, :frequency
    remove_column :workshops, :workshop_day
    remove_column :workshops, :frequency
    execute <<-SQL
      DROP TYPE days_of_week;
      DROP TYPE frequency;
    SQL
  end
end
