class Album < ActiveRecord::Base
  attr_accessible :title, :category_id, :country, :city

  has_many :images
  belongs_to :category

  validates :title, presence: true, uniqueness: true
  validates :category_id, :country, :city, presence: true

  default_scope order("created_at DESC")

  # TODO: Add a publish field
end
