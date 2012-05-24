class PicturesController < ApplicationController
  def index
    @post=Post.find(params[:post_id])
    @pictures=@post.picturess.all
  end

  def show
    @picture=Picture.find(params[:id])
  end
end
