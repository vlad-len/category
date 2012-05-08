class Admin::CatsController < ApplicationController
  before_filter :authenticate_admin!

  def index
    @cats=Cat.all
  end
  def new
    @cats=Cat.new
  end
  def create
    @cats=Cat.new(params[:cat])
    @cats.save
    redirect_to admin_cat_path(@cats)
  end
  def edit
    @cats=Cat.find(params[:id])
  end
  def show
    @cats=Cat.find(params[:id])

  end
  def update
    @cats=Cat.find(params[:id])
    @cats.update_attributes(params[:cat])
    redirect_to admin_cat_path(@cats)
  end
  def destroy
    @cats=Cat.find(params[:id])
    @cats.destroy
    redirect_to admin_cat_path(@cats)
  end
end
