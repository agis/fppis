class AddArticleLinksToHpThirdThumbs < ActiveRecord::Migration
  def change
    add_column :hp_third_thumbs, :first_article_id, :integer
    add_column :hp_third_thumbs, :second_article_id, :integer
    add_column :hp_third_thumbs, :third_article_id, :integer
    add_column :hp_third_thumbs, :fourth_article_id, :integer
    add_column :hp_third_thumbs, :fifth_article_id, :integer
    add_column :hp_third_thumbs, :sixth_article_id, :integer
  end
end
