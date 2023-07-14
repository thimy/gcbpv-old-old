class CreateConfigurations < ActiveRecord::Migration[7.0]
  def change
    create_table :configurations do |t|
      t.references :season, null: false, foreign_key: true

      t.timestamps
    end
  end
end
