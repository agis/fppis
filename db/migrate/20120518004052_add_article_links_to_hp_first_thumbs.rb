class AddArticleLinksToHpFirstThumbs < ActiveRecord::Migration
  def change
    add_column :hp_first_thumbs, :first_article_id, :integer
    add_column :hp_first_thumbs, :second_article_id, :integer
    add_column :hp_first_thumbs, :third_article_id, :integer
    add_column :hp_first_thumbs, :fourth_article_id, :integer
    add_column :hp_first_thumbs, :fifth_article_id, :integer
    add_column :hp_first_thumbs, :sixth_article_id, :integer
  end
end
