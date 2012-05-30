class Image < ActiveRecord::Base
  attr_accessible :caption, :file, :gallery_id, :noter_id,
                  :tag_list

  has_attached_file :file, styles: { thumb: "150x150" }

  acts_as_taggable

  belongs_to :gallery
  belongs_to :noter

  validates :file, :gallery_id, :noter_id, presence: true
end
