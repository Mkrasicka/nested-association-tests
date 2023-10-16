class CommentsController < ApplicationController

  def new
    @comment = Comment.new
    @post = Post.find(params[:post_id])
    # @comment = @post.comments.find(params[:id])
  end

  def create
    @comment = Comment.new(comment_params)
    @post = Post.find(params[:post_id])
    @comment.post = @post
    # @comment.save
    # redirect_to post_path(@post)

    if @comment.save
      redirect_to post_path(@post), notice: 'Comment was successfully created.'
    else
      render :new, status: :unprocessable_entity
      flash[:alert] = 'Comment creation failed.'
    end
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
