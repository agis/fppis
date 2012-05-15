class PagesController < ApplicationController

  def index
    @main = FpImage.last.main
  end

  def who
  end

  def contact
  end

end