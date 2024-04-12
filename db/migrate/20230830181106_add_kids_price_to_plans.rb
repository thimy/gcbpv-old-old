class AddKidsPriceToPlans < ActiveRecord::Migration[7.0]
  def change
    add_column :plans, :kids_class_price, :decimal
  end
end
