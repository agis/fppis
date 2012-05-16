class PostsController < ApplicationController

  def index
    @posts = Post.published.paginate(:page => params[:page])
    @posts = Post.published.where("category_id = ?", params[:c]) if params[:c]
    @posts = Post.published.tagged_with(params[:tag]) if params[:tag]
  end

  def show
    @post = Post.find(params[:id])
  end
end