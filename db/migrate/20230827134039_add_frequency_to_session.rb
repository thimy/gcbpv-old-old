class AddFrequencyToSession < ActiveRecord::Migration[7.0]
  def change
    add_column :sessions, :frequency, :frequency

    create_table :teacher_projects do |t|
      t.references :teacher
      t.references :project_instance
    end
  end
end
