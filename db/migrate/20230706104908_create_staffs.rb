class CreateStaffs < ActiveRecord::Migration[7.0]
  def change
    create_table :staffs do |t|
      t.string :first_name
      t.string :last_name
      t.integer :start_year
      t.boolean :is_employee
      t.text :description
      t.string :picture
      t.string :role
      t.string :status

      t.timestamps
    end

    add_column :teachers, :email, :string
    add_column :users, :is_volunteer, :boolean
  end
end
