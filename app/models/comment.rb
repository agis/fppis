class Comment < ActiveRecord::Base
  attr_accessible :content, :country, :email, :name

  belongs_to :post

  paginates_per 4

  validates :content, :country, :name, presence: true
  validates :content, length: { minimum: 3, maximum: 1400 }
  validates :country, :name, length: { minimum: 3, maximum: 50 }
end
