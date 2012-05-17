class Admin::OffersController < ApplicationController

  def index
    @offers=Offer.all
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer=Offer.new(params[:offer])
    @offer.save
    redirect_to admin_offer_path(@offer)
  end


  def edit
    @offer=Offer.find(params[:id])
  end

  def show
    @offer=Offer.find(params[:id])

  end

  def update
    @offer=Offer.find(params[:id])
    @offer.update_attributes(params[:offer])
    redirect_to admin_cats_path(@cats)
  end

  def destroy
    @offer=Offer.find(params[:id])
    @offer.destroy
    redirect_to admin_cats_path(@cats)
  end
end
