class HpMainImage < ActiveRecord::Base
  attr_accessible :one, :two, :three, :four, :five, :six, :first_article_id,
                  :second_article_id, :third_article_id, :fourth_article_id,
                  :fifth_article_id, :sixth_article_id, :rotate_delay

  style = { :styles => { :thumb => '258x174'} }

  s3_host = 's3-eu-west-1.amazonaws.com'
  s3_credentials = "#{Rails.root}/config/s3.yml"

  has_attached_file :one,   :styles => { :thumb => '258x174'},
                     storage: :s3,
                      s3_credentials: s3_credentials,
                      s3_host_name: s3_host
  has_attached_file :two,   style
  has_attached_file :three, style
  has_attached_file :four,  style
  has_attached_file :five,  style
  has_attached_file :six,   style
end

# TODO: add image validations 650x439