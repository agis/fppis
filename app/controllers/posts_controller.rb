class PostsController < ApplicationController

  def index
    @posts = Post.published.page(params[:page])
    @posts = Post.published.where("category_id = ?", params[:c]).page(params[:page]) if params[:c]
    @posts = Post.published.tagged_with(params[:tag]).page(params[:page]) if params[:tag]
  end

  def show
    @post = Post.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        render :pdf => "file_name"
      end
    end
  end
end