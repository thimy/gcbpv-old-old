class CreateTableTune < ActiveRecord::Migration[7.0]
  def change
    create_table :tunes do |t|
      t.string :name
      t.text :description
    end

    create_table :tune_files do |t|
      t.string :name
      t.text :description
      t.string :file
      t.references :teacher, null: false, foreign_key: true

      t.timestamps
    end

    create_table :reports do |t|
      t.date :date
      t.references :session, null: false, foreign_key: true
      t.text :description
    end

    create_join_table :reports, :tune_files do |t|
      t.index [:report_id, :tune_file_id]
      t.index [:tune_file_id, :report_id]
    end
  end
end
