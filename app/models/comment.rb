class Comment < ActiveRecord::Base
  attr_accessible :content, :country, :email, :name

  belongs_to :post

  paginates_per 5

  # OPTIMIZE: add validations
end
