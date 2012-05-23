class CategoriesController < ApplicationController
 before_filter :authenticate_user!
  def index
   @categories=Category.all
  end

  #def edit
  #  @catalog=Category.find(params[:id])
  #end
  #
  def show
    @categories=Category.find(params[:id])
  end
end
