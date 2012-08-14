class AboutsController < ApplicationController
  def index
    @abouts=About.all
    @categories=Category.all
  end

end
