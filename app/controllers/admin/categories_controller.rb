class Admin::CategoriesController < ApplicationController
 #before_filter :authenticate_admin!
  layout 'admin'
  def index
    @categories=Category.all
  end
  def new
    @category=Category.new
  end
  def create
    @category=Category.new(params[:category])
    @category.save
    redirect_to admin_categories_path(@categories)
  end
  def edit
    @category=Category.find(params[:id])
  end
  def show
    @category=Category.find(params[:id])

  end
  def update
    @category=Category.find(params[:id])
    @category.update_attributes(params[:category])
    redirect_to admin_categories_path(@categories)
  end

  def destroy
    @category=Category.find(params[:id])
    @category.destroy
    redirect_to admin_categories_path(@categories)
  end
end
