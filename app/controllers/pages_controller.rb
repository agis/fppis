class PagesController < ApplicationController

  def index
    @main_images = HpMainImage.first
    @first_thumbs = HpFirstThumb.first
    @second_thumbs = HpSecondThumb.first
    @third_thumbs = HpThirdThumb.first

    @main_posts = []
    @main_posts << Post.find(@main_images.first_article_id) unless @main_images.first_article_id.blank?
    @main_posts << Post.find(@main_images.second_article_id) unless @main_images.second_article_id.blank?
    @main_posts << Post.find(@main_images.third_article_id) unless @main_images.third_article_id.blank?
    @main_posts << Post.find(@main_images.fourth_article_id) unless @main_images.fourth_article_id.blank?
    @main_posts << Post.find(@main_images.fifth_article_id) unless @main_images.fifth_article_id.blank?
    @main_posts << Post.find(@main_images.sixth_article_id) unless @main_images.sixth_article_id.blank?

    # @first_thumb_first_link = Post.find(@first_thumbs.first_article_id)
    # @first_thumb_second_link = Post.find(@first_thumbs.second_article_id) unless @first_thumbs.second_article_id.blank?
    # @first_thumb_third_link = Post.find(@first_thumbs.third_article_id) unless @first_thumbs.third_article_id.blank?
    # @first_thumb_fourth_link = Post.find(@first_thumbs.fourth_article_id) unless @first_thumbs.fourth_article_id.blank?
    # @first_thumb_fifth_link = Post.find(@first_thumbs.fifth_article_id) unless @first_thumbs.fifth_article_id.blank?
    # @first_thumb_sixth_link = Post.find(@first_thumbs.sixth_article_id) unless @first_thumbs.sixth_article_id.blank?
  end

  def who
  end

  def contact
  end

end