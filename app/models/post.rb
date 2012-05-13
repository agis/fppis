class Post < ActiveRecord::Base
  attr_accessible :content, :title,
                  :category_id, :category_title,
                  :story_title, :story_subtitle,
                  :author_id, :photographer_id,
                  :published, :publish_date

  belongs_to :category
  belongs_to :author
  belongs_to :photographer

  scope :published, where(:published => true).order("created_at DESC")

end
