class CartsController < ApplicationController
  
	def show
		@cart = Cart.find(params[:id])
	end

	def new
		@cart = Cart.new
	end

	def create
		@cart = Cart.new(cart_params)
	end

	def checkout
		@cart = @cart = Cart.find(params[:id])
		@cart.check_out
		#current_user.current_cart = nil
		redirect_to cart_path(current_cart)
	end

	private

	def cart_params
		params.require(:cart).permit(:user_id)
	end
end
