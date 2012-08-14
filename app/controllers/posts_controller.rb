class PostsController < ApplicationController
  def index
    @category=Category.find(params[:category_id])
    @posts=Post.all
    @categories=Category.all
  end

  def show
    @post=Post.find(params[:id])
    @categories=Category.all
  end
end
