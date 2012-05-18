class AddArticleLinksToHpMainImages < ActiveRecord::Migration
  def change
    add_column :hp_main_images, :first_article_id, :integer
    add_column :hp_main_images, :second_article_id, :integer
    add_column :hp_main_images, :third_article_id, :integer
    add_column :hp_main_images, :fourth_article_id, :integer
    add_column :hp_main_images, :fifth_article_id, :integer
    add_column :hp_main_images, :sixth_article_id, :integer
  end
end
