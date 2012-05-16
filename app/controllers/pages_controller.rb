class PagesController < ApplicationController

  def index
    @main_image = HpMainImage.first
  end

  def who
  end

  def contact
  end

end