class Gallery < ActiveRecord::Base
  attr_accessible :title

  validates :title, presence: true, uniqueness: true

  has_many :images, dependent: :destroy
end
