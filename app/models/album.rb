class Album < ActiveRecord::Base
  attr_accessible :title, :category_id, :country, :city,
                  :published, :publish_date

  has_many :images
  belongs_to :category

  validates :title, presence: true, uniqueness: true
  validates :category_id, :country, :city, presence: true

  scope :published, where(:published => true).order("publish_date DESC")
end
