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
  # belongs_to :homepage

  acts_as_taggable

  scope :published, where(:published => true).order("created_at DESC")

  # LATER: add validations
  # TODO: add pagination using Kaminari
end