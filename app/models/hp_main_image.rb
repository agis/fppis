class HpMainImage < ActiveRecord::Base
  attr_accessible :one, :two, :three, :four, :five, :six, :first_article_id,
                  :second_article_id, :third_article_id, :fourth_article_id,
                  :fifth_article_id, :sixth_article_id, :rotate_delay

  thumb_size = '258x174'
  s3_host = 's3-eu-west-1.amazonaws.com'
  s3_credentials = "#{Rails.root}/config/s3.yml"

  has_attached_file :one, styles: { thumb: thumb_size },
                          storage: :s3,
                          s3_credentials: s3_credentials,
                          s3_host_name: s3_host

  has_attached_file :two, styles: { thumb: thumb_size },
                          storage: :s3,
                          s3_credentials: s3_credentials,
                          s3_host_name: s3_host

  has_attached_file :three, styles: { thumb: thumb_size },
                          storage: :s3,
                          s3_credentials: s3_credentials,
                          s3_host_name: s3_host

  has_attached_file :four, styles: { thumb: thumb_size },
                          storage: :s3,
                          s3_credentials: s3_credentials,
                          s3_host_name: s3_host

  has_attached_file :five, styles: { thumb: thumb_size },
                          storage: :s3,
                          s3_credentials: s3_credentials,
                          s3_host_name: s3_host

  has_attached_file :six, styles: { thumb: thumb_size },
                          storage: :s3,
                          s3_credentials: s3_credentials,
                          s3_host_name: s3_host

end

# TODO: add image validations 650x439