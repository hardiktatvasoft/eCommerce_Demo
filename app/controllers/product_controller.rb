class ProductController < ApplicationController
  def index
    @product = Product.find(params[:id])
  end
  def search  
    if params[:search].blank?  
      redirect_to(root_path, alert: "Empty field!") and return  
    else
      @parameter = params[:search].downcase  
      @product = Store.all.where("lower(name) LIKE :search", search: @parameter)
    end
  end
end
