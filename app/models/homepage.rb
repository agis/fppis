# TODO: Link to Blog posts (using has_one maybe)
class Homepage < ActiveRecord::Base
  attr_accessible :main, :first, :second, :third

  # TODO: add validations about image sizes
  s3_host = 's3-eu-west-1.amazonaws.com'
  s3_credentials = "#{Rails.root}/config/s3.yml"
  has_attached_file :main, :styles => { :thumb => "125x125>" },
                      storage: :s3,
                      s3_credentials: s3_credentials,
                      s3_host_name: s3_host

  has_attached_file :first, :styles => { :thumb => "125x125>" },
                      storage: :s3,
                      s3_credentials: s3_credentials,
                      s3_host_name: s3_host

  has_attached_file :second, :styles => { :thumb => "125x125>" },
                      storage: :s3,
                      s3_credentials: s3_credentials,
                      s3_host_name: s3_host

  has_attached_file :third, :styles => { :thumb => "125x125>" },
                      storage: :s3,
                      s3_credentials: s3_credentials,
                      s3_host_name: s3_host

  has_one :post
end
