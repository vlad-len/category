class Admin::AboutsController < ApplicationController
  layout 'admin'
  def index
    @abouts=About.all
  end

  def new
    @about=About.new
  end

  def create
    @about=About.new(params[:about])
    @about.save
    redirect_to admin_abouts_path(@abouts)
  end

  def show
    @about=About.find(params[:id])
  end


end
