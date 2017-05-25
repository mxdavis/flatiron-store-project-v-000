class CartsController < ApplicationController
  
	def show
		current_cart
	end

	def new
		@cart = Cart.new
	end

	def create
		@cart = Cart.new(cart_params)
	end

	def checkout
		@cart = current_cart
		current_cart.check_out
		current_user.current_cart = nil
		redirect_to cart_path(@cart)
	end

	private

	def cart_params
		params.require(:cart).permit(:user_id)
	end
end
