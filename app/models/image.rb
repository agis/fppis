class Image < ActiveRecord::Base
  attr_accessible :caption, :file, :gallery_id

  has_attached_file :file, styles: { thumb: "150x150" }

  # TODO: Add Noter column (from a Noter model) and use in frontend (label: Note by)
  # TODO: Add tags functionality
  belongs_to :gallery

  validates :caption, :file, :gallery_id, presence: true
end
