class Author < ActiveRecord::Base
  attr_accessible :name

  validates :name, uniqueness: true, presence: true, length: { minimum: 4 }

  has_many :posts
end
