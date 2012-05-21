class Category < ActiveRecord::Base
  attr_accessible :title

  validates :title, uniqueness: true, presence: true, length: { minimum: 3 }

  has_many :posts
end
