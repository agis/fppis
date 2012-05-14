class Post < ActiveRecord::Base
  attr_accessible :content, :title,
                  :category_id, :category_title,
                  :story_title, :story_subtitle,
                  :author_id, :photographer_id,
                  :published, :publish_date,
                  :tag_list

  belongs_to :category
  belongs_to :author
  belongs_to :photographer

  acts_as_taggable_on :tags

  scope :published, where(:published => true).order("created_at DESC")

  # TODO: add validations

end