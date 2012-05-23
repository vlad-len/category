class Admin::OffersController < ApplicationController
  layout 'admin'
  def index
    @category=Category.find(params[:category_id])
    @offers=@category.offers.all
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer=Offer.new(params[:offer])
    @offer.save
    redirect_to admin_categories_path
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
    redirect_to admin_categories_path(@category)
  end

  def destroy
    @offer=Offer.find(params[:id])
    @offer.destroy
    redirect_to admin_categories_path(@category)
  end
end
