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
    @post=Post.new
    @post.title=params[:title]
    @post.description=params[:description]
    @post.short_description=params[:short_description]
    @post.phone1=params[:phone1]
    @post.phone2=params[:phone2]
    @post.email=params[:email]
    @post.city=params[:city]
    @post.address=params[:address]
    @post.category_id=params[:category_id]
    @post.save

    @image=Picture.new
    @image.image=params[:image1]
    @image.post_id=@post.id
    @image.save
    @image=Picture.new
    @image.image=params[:image2]
    @image.post_id=@post.id
    @image.save
    @image=Picture.new
    @image.image=params[:image3]
    @image.post_id=@post.id
    @image.save
    @image=Picture.new
    @image.image=params[:image4]
    @image.post_id=@post.id
    puts @image.inspect
    @image.save
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
    @post.update_attributes(params[:post])
    redirect_to admin_categories_path(@category)
  end

  def destroy
    @post=Post.find(params[:id])
    @post.destroy
    redirect_to admin_categories_path(@category)
  end
end
