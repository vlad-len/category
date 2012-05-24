class Admin::PostsController < ApplicationController
  layout 'admin'
  def index
    @category=Category.find(params[:category_id])
    @posts=@category.posts.all
  end

  def new
    @post = Post.new
  end

  def create
    @post=Post.new(params[:offer])
    @post.save
    redirect_to admin_categories_path
  end


  def edit
    @post=Post.find(params[:id])
  end

  def show
    @post=Post.find(params[:id])
  end

  def update
    @post=Post.find(params[:id])
    @post.update_attributes(params[:offer])
    redirect_to admin_categories_path(@category)
  end

  def destroy
    @post=Post.find(params[:id])
    @post.destroy
    redirect_to admin_categories_path(@category)
  end
end
