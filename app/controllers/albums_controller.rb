class AlbumsController < ApplicationController
  def index
    set_images
  end

  def show
    @album = Album.find(params[:id])
    @images = @album.images
  end

  private

  def set_images
    @food_images = []
    @people_images = []
    @places_images = []

    albums = Album.where("category_id = 1").order("created_at DESC").limit(3)
    albums.each do |album|
      @food_images << album.images.last unless album.images.empty?
    end

    albums = Album.where("category_id = 2").order("created_at DESC").limit(3)
    albums.each do |album|
      @people_images << album.images.last unless album.images.empty?
    end

    albums = Album.where("category_id = 3").order("created_at DESC").limit(3)
    albums.each do |album|
      @places_images << album.images.last unless album.images.empty?
    end
  end
end