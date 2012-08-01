class PostsController < ApplicationController
  def index
    @posts=posts.all
  end

  def new
    @post = Post.new
  end

  def create
    @post=Post.new(params[:post])
    @post.save
    redirect_to categories_path
  end

  def show
    @post=Post.find(params[:id])
  end
end
