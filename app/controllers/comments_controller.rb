class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    @comment.post = @post

    if @comment.save
      redirect_to post_path(@post), notice: 'Comment was successfully created.'
    else
      flash[:alert] = 'Comment creation failed.'
    end
    redirect_to post_path(@post)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(@comment.post)
  end

  private

  def comment_params
    params.require(:comment).permit(:commentary)
  end
end
