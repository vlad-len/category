class AboutsController < ApplicationController
  def index
    @abouts=About.all
    @categories=Category.all
  end

  def show
    @about=About.find(params[:id])
    @categories=Category.all
  end

end
