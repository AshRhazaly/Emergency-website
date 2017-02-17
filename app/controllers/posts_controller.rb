class PostsController < ApplicationController
  before_action :set_params, only: [:show, :update, :edit, :destroy]
  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to posts_path
  end

  def show
  end

  def update
  end

  def edit
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

private
  def set_params
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:name,:subject,:category,:content)
  end
end
