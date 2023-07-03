class CreateJoinTableProjectsSeasons < ActiveRecord::Migration[7.0]
  def change
    remove_column :projects, :season_id
    create_join_table :projects, :seasons do |t|
      t.index [:project_id, :season_id]
      t.index [:season_id, :project_id]
    end
  end
end
