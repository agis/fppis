class PagesController < ApplicationController

  def index
    @main = Frontpage.last.main
    @first = Frontpage.last.first
    @second = Frontpage.last.second
    @third = Frontpage.last.third
  end

  def who
  end

  def contact
  end

end