class PicturesController < ApplicationController
  def index
    @offer=Offer.find(params[:offer_id])
    @pictures=@offer.picturess.all
  end

  def show
    @picture=Picture.find(params[:id])
  end
end
