class AddArticleLinksToHpSecondThumbs < ActiveRecord::Migration
  def change
    add_column :hp_second_thumbs, :first_article_id, :integer
    add_column :hp_second_thumbs, :second_article_id, :integer
    add_column :hp_second_thumbs, :third_article_id, :integer
    add_column :hp_second_thumbs, :fourth_article_id, :integer
    add_column :hp_second_thumbs, :fifth_article_id, :integer
    add_column :hp_second_thumbs, :sixth_article_id, :integer
  end
end
