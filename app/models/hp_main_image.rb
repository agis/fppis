class HpMainImage < ActiveRecord::Base
  attr_accessible :one, :two, :three, :four, :five, :six
  # FINAL SIZE: 650x439

  s3_host = 's3-eu-west-1.amazonaws.com'
  s3_credentials = "#{Rails.root}/config/s3.yml"

  has_attached_file :one, :styles => { :thumb => "125x125>" },
                      storage: :s3,
                      s3_credentials: s3_credentials,
                      s3_host_name: s3_host

  has_attached_file :two, :styles => { :thumb => "125x125>" },
                      storage: :s3,
                      s3_credentials: s3_credentials,
                      s3_host_name: s3_host

  has_attached_file :three, :styles => { :thumb => "125x125>" },
                      storage: :s3,
                      s3_credentials: s3_credentials,
                      s3_host_name: s3_host

  has_attached_file :four, :styles => { :thumb => "125x125>" },
                      storage: :s3,
                      s3_credentials: s3_credentials,
                      s3_host_name: s3_host

  has_attached_file :five, :styles => { :thumb => "125x125>" },
                      storage: :s3,
                      s3_credentials: s3_credentials,
                      s3_host_name: s3_host

  has_attached_file :six, :styles => { :thumb => "125x125>" },
                      storage: :s3,
                      s3_credentials: s3_credentials,
                      s3_host_name: s3_host
end

# TODO: add image validations when Corey sends me sizes
# TODO: add Links for each image. 6 links will needed, :one_link, :two_link etc.
# so add these fields, of integer