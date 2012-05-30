class Gallery < ActiveRecord::Base
  attr_accessible :title, :category_id, :country, :city

  has_many :images
  belongs_to :category

  validates :title, presence: true, uniqueness: true
  validates :category_id, :country, :city, presence: true

end
