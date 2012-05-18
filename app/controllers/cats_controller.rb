class CatsController < ApplicationController
 #before_filter :authenticate_user!
  def  index
   @cats=Cat.all
  end


  def edit
    @cats=Cat.find(params[:id])
  end

  def show
    @cats=Cat.find(params[:id])
  end
end
