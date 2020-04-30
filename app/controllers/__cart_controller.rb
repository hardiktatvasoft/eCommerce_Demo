class CartController < ApplicationController
  def add_to_cart
    if !current_user.present?
      puts "Please login to add item in cart."
    end
  
    product_id = params[:product_id]
    user_id = current_user.id
    quantity = 1
    cart = Cart.new(:user_id => user_id, :product_id => product_id, :quantity => quantity)
  
    if cart.save!
      redirect_to root_path
    end
  
  end


  def index
    @cart = Cart.all
  end

  def show
  end
end
