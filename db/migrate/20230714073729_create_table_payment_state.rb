class CreateTablePaymentState < ActiveRecord::Migration[7.0]
  def change
    create_table :payment_states do |t|
      t.string :name
      t.timestamps
    end

    remove_column :subscriptions, :status
    add_reference :subscriptions, :payment_state
  end
end
