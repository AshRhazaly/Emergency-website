class CommentsController < ApplicationController
  before_action :set_params, only: [:index,:create,:new,:update,:edit,:show]
  def index
    redirect_to new_post_comment_path
  end

  def new
    @comment = @post.comments.build
  end

  def create
    @comment = @post.comments.build(comment_params)
    @comment.save!
    redirect_to post_path(@post)
  end

  def show
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update
      redirect_to post_path(@comment)
    else
      render 'edit'
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def destroy
    post = Post.find(params[:post_id])
    @comment = post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(post)
  end

private
  def set_params
    @post = Post.find(params[:post_id])
  end
  def comment_params
    params.require(:comment).permit(:name,:content)
  end
end
