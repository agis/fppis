class PagesController < ApplicationController

  def index
    @main_image = HpMainImage.first
    @first_thumb = HpFirstThumb.first
    @second_thumb = HpSecondThumb.first
    @third_thumb = HpThirdThumb.first
  end

  def who
  end

  def contact
  end

end