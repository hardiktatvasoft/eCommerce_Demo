class OrderProductController < ApplicationController
    def index
        @orders = OrderProduct.all
    end
    def order_detail
        user = User.find(current_user.id)
        @address = Address.find(user.address_id)
    end
    def place_order
        cartItems = Cart.where(user_id: current_user.id)
        if !cartItems.blank?
            cartItems.each do |cart|
                if cart.product&.quantity < cart.quantity
                    flash[:notice] = "Stock not available for product " + cart.product&.name + "(" + cart.product&.quantity.to_s + ")" + "."
                    redirect_to cart_index_path
                end
            end
        end
        order = Order.new(:user_id => current_user.id, :order_date => Time.current, :address_id => current_user.address_id)
        if order.save!
            if cartItems.blank?
                flash[:notice] = "Please add items to cart."
            else
                cartItems.each do |cart|
                    orderProducts = OrderProduct.new(:order_id => order.id, :product_id => cart.product_id, :quantity => cart.quantity)
                    if orderProducts.save!
                        Cart.where(user_id: current_user.id).destroy_all
                    end
                end
            end
            redirect_to cart_index_path
        end
    end
end
