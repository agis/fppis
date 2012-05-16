class PostsController < ApplicationController

  # TODO: add pagination (3 per page). and read more link with preview text (word count)
  def index
    @posts = Post.published.all
    @posts = Post.published.where("category_id = ?", params[:c]) if params[:c]
    @posts = Post.published.tagged_with(params[:tag]) if params[:tag]
  end

  def show
    @post = Post.find(params[:id])
  end
end