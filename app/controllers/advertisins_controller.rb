class AdvertisinsController < ApplicationController
  def index
    @advertisins=Advertisin.all
    @categories=Category.all
  end

  def new
    @advertisin=Advertisin.new
    @categories=Category.all
  end

  def create
    @advertisin=Advertisin.new(params[:advertisin])
    @advertising.save
  end
end
