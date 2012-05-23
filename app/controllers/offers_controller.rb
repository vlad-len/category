class OffersController < ApplicationController
  def index
    @category=Category.find(params[:category_id])
    @offers=@category.offers.all
  end

  def show
    @offer=Offer.find(params[:id])
  end
end
