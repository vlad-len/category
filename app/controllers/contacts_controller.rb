class ContactsController < ApplicationController
  def index
    @contacts=Contact.all
    @categories=Category.all
  end

  def new
    @contact=Contact.new
    @categories=Category.all
  end

  def create
    @contact=Contact.new(params[:contact])
    @contact.save
  end
end
