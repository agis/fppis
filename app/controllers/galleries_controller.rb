class GalleriesController < ApplicationController
  def index
    @galleries = Gallery.all
    @galleries = Gallery.where("category_id = ?", params[:c]) if params[:c]
  end

  def show
    @gallery = Gallery.find(params[:id])
    @images = @gallery.images
  end
end