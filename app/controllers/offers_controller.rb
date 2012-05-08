class OffersController < ApplicationController
  def create
    @cats=Cat.find(params[:cat_id])
    @offers=@cats.offers.create(params[:offer])
    redirect_to cats_path
  end
  def destroy
    @cats=Cat.find(params[:cat_id])
    @offers=@cats.offers.find(params[:offer])
    @offers.destroy
    redirect_to cats_path(@cats)
  end
end
