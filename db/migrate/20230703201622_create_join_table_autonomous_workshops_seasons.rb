class CreateJoinTableAutonomousWorkshopsSeasons < ActiveRecord::Migration[7.0]
  def change
    rename_table :autonomous_workshops, :group_works
    create_join_table :group_works, :seasons do |t|
      t.index [:group_work_id, :season_id]
      t.index [:season_id, :group_work_id]
    end

    add_column :group_works, :archived, :boolean
    add_column :instrument_classes, :archived, :boolean
    add_column :instruments, :archived, :boolean
    add_column :meetings, :archived, :boolean
    add_column :projects, :archived, :boolean
    add_column :sessions, :archived, :boolean
    add_column :workshops, :archived, :boolean
  end
end
