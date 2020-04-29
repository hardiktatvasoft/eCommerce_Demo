class CartController < ApplicationController
  def index
    @cartItems = Cart.all
    @subtotal = 0
  end
  def add_to_cart
    if current_user.present?
      product_id = params[:product_id]
      user_id = current_user.id
      checkcart = Cart.where(product_id: product_id, user_id: user_id).limit(1)
      if checkcart.blank?
        quantity = 1
        cart = Cart.new(:user_id => user_id, :product_id => product_id, :quantity => quantity)
      else
        cart = Cart.find(checkcart[0].id)
        cart.quantity = cart.quantity + 1
      end
      cart.save
      # redirect_to :back
      redirect_to root_path
    # else
      # puts "Please login to add item in cart."
      # redirect_to user_session_path
    end
  end
  def update
    cart = Cart.find(params[:id])
    cart.quantity = params[:cart][:quantity]
    cart.save
    redirect_to cart_index_path
  end
  def destroy
    Cart.find(params[:id]).destroy
    redirect_to cart_index_path
  end
  def show
  end
end
