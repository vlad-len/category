class PostsController < ApplicationController
  def index
    @category=Category.find(params[:category_id])
    @posts=@category.posts.all
  end

  def show
    @post=Post.find(params[:id])
    @images=@post.pictures.all
  end
end
