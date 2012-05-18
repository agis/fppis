class PagesController < ApplicationController

  def index
    @main_images = HpMainImage.first
    @first_thumbs = HpFirstThumb.first
    @second_thumbs = HpSecondThumb.first
    @third_thumbs = HpThirdThumb.first

  end

  def who
  end

  def contact
  end

end