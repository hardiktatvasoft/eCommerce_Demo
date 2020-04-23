class HomeController < ApplicationController
  def index
    if params[:search].blank? 
      @products = Product.all
    else
      @search = params[:search].downcase
      @products = Product.all.where("lower(name) LIKE :search", search: "%#{@search}%")
    end
  end
end
