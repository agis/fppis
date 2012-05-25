class Post < ActiveRecord::Base
  attr_accessible :content,
                  :category_id, :tag_list,
                  :story_title, :story_subtitle,
                  :author_id, :photographer_id,
                  :published, :publish_date,
                  :country, :city

  belongs_to :category
  belongs_to :author
  belongs_to :photographer
  has_many :comments

  paginates_per 2

  acts_as_taggable

  scope :published, where(:published => true).order("publish_date DESC")

  validates :category, :content, :country, :story_title, :author,
            :presence => true


  before_save do |post|
    post.tag_list << post.country
    post.tag_list << post.city unless post.city.blank?
  end
end