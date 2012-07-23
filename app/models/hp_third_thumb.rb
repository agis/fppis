class HpThirdThumb < ActiveRecord::Base
  attr_accessible :one, :two, :three, :four, :five, :six, :first_article_id,
                  :second_article_id, :third_article_id, :fourth_article_id,
                  :fifth_article_id, :sixth_article_id

  s3_host = 's3-ap-southeast-1.amazonaws.com'
  s3_credentials = "#{Rails.root}/config/s3.yml"

  has_attached_file :one, storage: :s3,
                          s3_credentials: s3_credentials,
                          s3_host_name: s3_host

  has_attached_file :two, storage: :s3,
                          s3_credentials: s3_credentials,
                          s3_host_name: s3_host

  has_attached_file :three, storage: :s3,
                          s3_credentials: s3_credentials,
                          s3_host_name: s3_host

  has_attached_file :four, storage: :s3,
                          s3_credentials: s3_credentials,
                          s3_host_name: s3_host

  has_attached_file :five, storage: :s3,
                          s3_credentials: s3_credentials,
                          s3_host_name: s3_host

  has_attached_file :six, storage: :s3,
                          s3_credentials: s3_credentials,
                          s3_host_name: s3_host
end
