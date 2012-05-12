class AddFieldsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :category_title, :string
    add_column :posts, :story_title, :string
    add_column :posts, :story_subtitle, :string
  end
end
