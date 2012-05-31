class Image < ActiveRecord::Base
  attr_accessible :caption, :file, :album_id, :noter_id,
                  :tag_list, :photographer_id

  has_attached_file :file, styles: { thumb: "100x100" }

  acts_as_taggable

  belongs_to :album
  belongs_to :noter
  belongs_to :photographer

  validates :file, :album_id, :noter_id, :photographer_id, presence: true
end
