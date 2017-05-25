class CartsController < ApplicationController
  
	def show
		set_cart
	end

	def new
		@cart = Cart.new
	end

	def create
		current_user.current_cart = Cart.create(cart_params)

	end

	def checkout
		set_cart
		@cart.status = "submitted"
		@cart.check_out
		current_user.current_cart = nil
		set_cart
		redirect_to cart_path(@cart)
	end

	private

	def set_cart
		@cart = Cart.find(params[:id])
	end

	def cart_params
		params.require(:cart).permit(:user_id)
	end
end
