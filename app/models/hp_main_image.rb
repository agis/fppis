class HpMainImage < ActiveRecord::Base
  attr_accessible :one, :two, :three, :four, :five, :six, :first_article_id,
                  :second_article_id, :third_article_id, :fourth_article_id,
                  :fifth_article_id, :sixth_article_id

  style = { :styles => { :thumb => '258x174'} }

  has_attached_file :one,   style
  has_attached_file :two,   style
  has_attached_file :three, style
  has_attached_file :four,  style
  has_attached_file :five,  style
  has_attached_file :six,   style

  validates_attachment :one, :presence => true
end

# TODO: add image validations 650x439