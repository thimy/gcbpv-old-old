class AddAdminToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :admin, :boolean
    rename_column :users, :is_volunteer, :volunteer
  end
end
