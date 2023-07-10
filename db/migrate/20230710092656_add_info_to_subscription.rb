class AddInfoToSubscription < ActiveRecord::Migration[7.0]
  def change
    add_column :subscriptions, :information, :text
  end
end
