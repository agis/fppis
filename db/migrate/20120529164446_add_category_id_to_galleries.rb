class AddCategoryIdToGalleries < ActiveRecord::Migration
  def change
    add_column :galleries, :category_id, :integer
  end
end
