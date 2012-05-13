class PostsController < ApplicationController

  def index
    @posts = Post.published.all
  end

  def show
    @post = Post.find(params[:id])
  end
end