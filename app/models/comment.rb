class Comment < ActiveRecord::Base
  attr_accessible :content, :country, :email, :name

  belongs_to :post

  paginates_per 4

  validates :content, :country, :name, presence: true

  # OPTIMIZE: add validations
end
