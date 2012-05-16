class Category < ActiveRecord::Base
  attr_accessible :title

  # TODO: add more validations for presence, length etc
  validates :title, :uniqueness => true

  has_many :posts
end
