class PagesController < ApplicationController

  def index
    @main_images = HpMainImage.first
    @first_thumbs = HpFirstThumb.first
    @second_thumbs = HpSecondThumb.first
    @third_thumbs = HpThirdThumb.first

    @first_link = Post.find(@main_images.first_article_id)
    @second_link = Post.find(@main_images.second_article_id)
    @third_link = Post.find(@main_images.third_article_id)
    @fourth_link = Post.find(@main_images.fourth_article_id)
    @fifth_link = Post.find(@main_images.fifth_article_id)
    @sixth_link = Post.find(@main_images.sixth_article_id)
  end

  def who
  end

  def contact
  end

end