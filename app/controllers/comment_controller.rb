class CommentController < ApplicationController
  before_action :set_params, only: [:show,:update,:edit,:destroy]
  def index
    @comment = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.save
    redirect_to comments_path
  end

  def show
  end

  def update
  end

  def edit
  end

  def destroy
    @comment.destroy
    redirect_to comments_path
  end

private
  def set_params
    @comment = Comment.find(params[:id])
  end
  def comment_params
    params.require(:comment).permit(:name,:content)
  end
end
