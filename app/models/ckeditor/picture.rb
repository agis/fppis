class Ckeditor::Picture < Ckeditor::Asset
  s3_host = 's3-eu-west-1.amazonaws.com'
  s3_credentials = "#{Rails.root}/config/s3.yml"

  has_attached_file :data,
                     storage: :s3,
                      s3_credentials: s3_credentials,
                      s3_host_name: s3_host

	validates_attachment_size :data, :less_than => 2.megabytes
	validates_attachment_presence :data

	def url_content
	  url(:content)
	end
end
