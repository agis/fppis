class Image < ActiveRecord::Base
  attr_accessible :caption, :file, :album_id, :noter_id,
                  :tag_list, :photographer_id

  s3_host = 's3-eu-west-1.amazonaws.com'
  s3_credentials = "#{Rails.root}/config/s3.yml"

  has_attached_file :file, styles: { thumb: '245x153' },
                          storage: :s3,
                          s3_credentials: s3_credentials,
                          s3_host_name: s3_host

  acts_as_taggable

  belongs_to :album
  belongs_to :noter
  belongs_to :photographer

  validates :file, :album_id, :noter_id, :photographer_id, presence: true
end
