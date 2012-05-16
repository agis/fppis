class PagesController < ApplicationController

  def index
    @main_image = HpMainImage.first
    # TODO: Implement the thumb areas now (+models)
    @first_thumb = 1
    @second_thumb = 2
    @third_thumb = 3
  end

  def who
  end

  def contact
  end

end