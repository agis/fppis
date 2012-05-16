class Post < ActiveRecord::Base
  attr_accessible :content, :title,
                  :category_id, :category_title,
                  :story_title, :story_subtitle,
                  :author_id, :photographer_id,
                  :published, :publish_date,
                  :tag_list, :country,
                  :city

  belongs_to :category
  belongs_to :author
  belongs_to :photographer

  paginates_per 3

  acts_as_taggable

  scope :published, where(:published => true).order("publish_date DESC")

  # TODO: add validations
end