class AlbumsController < ApplicationController
  def index
    if params[:c]
      @category = Category.find_by_title(params[:c])
      set_albums
      render 'filter'
    else
      set_images
    end
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

    albums = Album.where("category_id = 1").limit(3)
    albums.each do |album|
      @food_images << album.images.last unless album.images.empty?
    end

    albums = Album.where("category_id = 2").limit(3)
    albums.each do |album|
      @people_images << album.images.last unless album.images.empty?
    end

    albums = Album.where("category_id = 3").limit(3)
    albums.each do |album|
      @places_images << album.images.last unless album.images.empty?
    end
  end

  def set_albums
    @albums = []
    albums = Album.where("category_id = ?", @category.id).limit(12)

    albums.each do |album|
      @albums << album unless album.images.empty?
    end
  end
end