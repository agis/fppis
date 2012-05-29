class Image < ActiveRecord::Base
  attr_accessible :title, :file, :gallery_id

  has_attached_file :file, styles: { thumb: "150x150" }

  belongs_to :gallery

  validates :file, :gallery_id, presence: true
end
