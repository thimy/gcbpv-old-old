class ChangeColumnDefaultUsersEmail < ActiveRecord::Migration[7.0]
  def change
    remove_column :students, :mail
  end
end
