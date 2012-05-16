class Author < ActiveRecord::Base
  attr_accessible :name

  # TODO: add more validations for presence, length etc
  validates :name, :uniqueness => true

  has_many :posts
end
