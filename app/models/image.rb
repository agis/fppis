class Image < ActiveRecord::Base
  attr_accessible :caption, :file, :gallery_id, :noter_id

  has_attached_file :file, styles: { thumb: "150x150" }

  # TODO: Add tags functionality
  belongs_to :gallery
  belongs_to :noter

  validates :file, :gallery_id, :noter_id, presence: true
end
