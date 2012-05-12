class Post < ActiveRecord::Base
  attr_accessible :content, :title,
                  :category_id, :category_title,
                  :story_title, :story_subtitle,
                  :author_id, :photographer_id

  belongs_to :category
  belongs_to :author
  belongs_to :photographer
end
