class PostsController < ApplicationController

  def index
    if params[:c]
      @posts = Post.published.where("category_id = ?", params[:c])
    else
      @posts = Post.published.all
    end
  end

  def show
    @post = Post.find(params[:id])
  end
end