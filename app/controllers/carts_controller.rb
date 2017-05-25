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
		
	end

	private

	def cart_params
		params.require(:cart).permit(:user_id)
	end
end
