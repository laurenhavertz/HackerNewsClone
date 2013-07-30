class CommentsController < ApplicationController

  def create
    @link = Link.find(params[:comment].delete(:link_id))
    @comment = @link.comments.build(params[:comment])
    flash[:error] = @comment.errors.messages unless @comment.save
    redirect_to @link
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.delete
    redirect_to comments_path
  end

end