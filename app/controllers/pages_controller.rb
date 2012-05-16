class PagesController < ApplicationController

  def index
    @main_image = FpMainImage.first
  end

  def who
  end

  def contact
  end

end