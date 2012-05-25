class PagesController < ApplicationController

  def index
    @main_images = HpMainImage.first
    @first_thumbs = HpFirstThumb.first
    @second_thumbs = HpSecondThumb.first
    @third_thumbs = HpThirdThumb.first

    @main_posts = []
    @main_posts << Post.find(@main_images.first_article_id)  unless  @main_images.first_article_id.blank?
    @main_posts << Post.find(@main_images.second_article_id) unless  @main_images.second_article_id.blank?
    @main_posts << Post.find(@main_images.third_article_id)  unless  @main_images.third_article_id.blank?
    @main_posts << Post.find(@main_images.fourth_article_id) unless  @main_images.fourth_article_id.blank?
    @main_posts << Post.find(@main_images.fifth_article_id)  unless  @main_images.fifth_article_id.blank?
    @main_posts << Post.find(@main_images.sixth_article_id)  unless  @main_images.sixth_article_id.blank?

    @first_posts = []
    @first_posts << Post.find(@first_thumbs.first_article_id)  unless  @first_thumbs.first_article_id.blank?
    @first_posts << Post.find(@first_thumbs.second_article_id) unless  @first_thumbs.second_article_id.blank?
    @first_posts << Post.find(@first_thumbs.third_article_id)  unless  @first_thumbs.third_article_id.blank?
    @first_posts << Post.find(@first_thumbs.fourth_article_id) unless  @first_thumbs.fourth_article_id.blank?
    @first_posts << Post.find(@first_thumbs.fifth_article_id)  unless  @first_thumbs.fifth_article_id.blank?
    @first_posts << Post.find(@first_thumbs.sixth_article_id)  unless  @first_thumbs.sixth_article_id.blank?

    @second_posts = []
    @second_posts << Post.find(@second_thumbs.first_article_id)  unless  @second_thumbs.first_article_id.blank?
    @second_posts << Post.find(@second_thumbs.second_article_id) unless  @second_thumbs.second_article_id.blank?
    @second_posts << Post.find(@second_thumbs.third_article_id)  unless  @second_thumbs.third_article_id.blank?
    @second_posts << Post.find(@second_thumbs.fourth_article_id) unless  @second_thumbs.fourth_article_id.blank?
    @second_posts << Post.find(@second_thumbs.fifth_article_id)  unless  @second_thumbs.fifth_article_id.blank?
    @second_posts << Post.find(@second_thumbs.sixth_article_id)  unless  @second_thumbs.sixth_article_id.blank?

    @third_posts = []
    @third_posts << Post.find(@third_thumbs.first_article_id)  unless  @third_thumbs.first_article_id.blank?
    @third_posts << Post.find(@third_thumbs.second_article_id) unless  @third_thumbs.second_article_id.blank?
    @third_posts << Post.find(@third_thumbs.third_article_id)  unless  @third_thumbs.third_article_id.blank?
    @third_posts << Post.find(@third_thumbs.fourth_article_id) unless  @third_thumbs.fourth_article_id.blank?
    @third_posts << Post.find(@third_thumbs.fifth_article_id)  unless  @third_thumbs.fifth_article_id.blank?
    @third_posts << Post.find(@third_thumbs.sixth_article_id)  unless  @third_thumbs.sixth_article_id.blank?
  end

  def who
  end

  def contact
  end

  def more_fppis
  end

  def terms
  end

  def policy
  end

  def sitemap
  end
end