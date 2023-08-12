class AddPayorIdToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :payor
  end
end
