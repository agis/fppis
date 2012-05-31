class GalleriesController < ApplicationController
  def index
    set_images
  end

  def show
    @gallery = Gallery.find(params[:id])
    @images = @gallery.images
  end

  private

  def set_images
    @food_images = []
    @people_images = []
    @places_images = []

    galleries = Gallery.where("category_id = 1").order("created_at DESC").limit(3)
    galleries.each do |gallery|
      @food_images << gallery.images.last unless gallery.images.empty?
    end

    galleries = Gallery.where("category_id = 2").order("created_at DESC").limit(3)
    galleries.each do |gallery|
      @people_images << gallery.images.last unless gallery.images.empty?
    end

    galleries = Gallery.where("category_id = 3").order("created_at DESC").limit(3)
    galleries.each do |gallery|
      @places_images << gallery.images.last unless gallery.images.empty?
    end
  end
end