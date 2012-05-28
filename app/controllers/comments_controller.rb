class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params[:comment])

    if @comment.save
      redirect_to @post, notice: 'Thank you for your comment!'
    else
      redirect_to @post, notice: @comment.errors
    end
  end
end