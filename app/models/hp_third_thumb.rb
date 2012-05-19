class HpThirdThumb < ActiveRecord::Base
  attr_accessible :one, :two, :three, :four, :five, :six, :first_article_id,
                  :second_article_id, :third_article_id, :fourth_article_id,
                  :fifth_article_id, :sixth_article_id

  has_attached_file :one
  has_attached_file :two
  has_attached_file :three
  has_attached_file :four
  has_attached_file :five
  has_attached_file :six

  validates_attachment :one, :presence => true
end
