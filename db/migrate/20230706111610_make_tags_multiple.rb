class MakeTagsMultiple < ActiveRecord::Migration[7.0]
  def change
    remove_reference :posts, :category

    create_join_table :categories, :posts do |t|
      t.index [:category_id, :post_id]
      t.index [:post_id, :category_id]
    end
  end
end
