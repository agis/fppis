class Image < ActiveRecord::Base
  attr_accessible :caption, :file, :gallery_id, :noter_id,
                  :tag_list, :photographer_id

  has_attached_file :file, styles: { thumb: "150x150" }

  acts_as_taggable

  belongs_to :gallery
  belongs_to :noter
  belongs_to :photographer

  validates :file, :gallery_id, :noter_id, :photographer_id, presence: true
end
