class AboutsController < ApplicationController
  def index
    @abouts=About.all
    @categories=Category.all
  end

  def new
    @about=About.new
    @categories=Category.all
  end

  def create
    @about=About.new(params[:about])
    @about.save
  end


end
