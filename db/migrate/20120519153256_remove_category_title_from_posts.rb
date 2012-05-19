class RemoveCategoryTitleFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :category_title
  end
end
