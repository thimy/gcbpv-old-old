class CreateDiscoveries < ActiveRecord::Migration[7.0]
  def change
    create_table :discoveries do |t|
      t.string :name
      t.text :description
      t.decimal :price

      t.timestamps
    end

    remove_column :workshops, :workshop_type
  end
end
