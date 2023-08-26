class CreateJoinTableProjectsSeasons < ActiveRecord::Migration[7.0]
  def change
    remove_column :projects, :season_id
    create_table :project_instances do |t|
      t.references :project
      t.references :season
    end
  end
end
