class PostsController < ApplicationController

  def index
    @posts = Post.published.all
    @posts = Post.published.where("category_id = ?", params[:c]) if params[:c]
    @posts = Post.tagged_with(params[:tag]) if params[:tag]
  end

  def show
    @post = Post.find(params[:id])
  end
end