class Frontpage < ActiveRecord::Base
  attr_accessible :main, :first, :second, :third

  # TODO: add validations
  # TODO: ask Corey about styles
  has_attached_file :main, :styles => { :thumb => "125x125>" }
  has_attached_file :first, :styles => { :thumb => "125x125>" }
  has_attached_file :second, :styles => { :thumb => "125x125>" }
  has_attached_file :third, :styles => { :thumb => "125x125>" }
end
