class PagesController < ApplicationController

  def index
    @main = Homepage.last.main
    @first = Homepage.last.first
    @second = Homepage.last.second
    @third = Homepage.last.third
  end

  def who
  end

  def contact
  end

end