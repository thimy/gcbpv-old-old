class CreateMeetings < ActiveRecord::Migration[7.0]
  def change
    create_table :meetings do |t|
      t.string :name
      t.integer :amount
      t.string :meeting_day
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
