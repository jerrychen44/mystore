class ProductItemsController < ApplicationController

	#task is to find the users cart in current session
	# and create product in cart

	#we implement in concerns/current_cart.rb
	include CurrentCart
	before_action :set_cart, only: [:create]
	before_action :set_product_item, only: [:show, :destroy]

	def create
		#we use set_cart, so, we already have a @cart can use.
		product = Product.find(params[:product_id])
		#we try to add the product in product_item
		#we implect add_product in model cart.rb
		@product_item = @cart.add_product(product.id)
		if @product_item.save
		  redirect_to shop_url, notice: 'Product added to Cart'
		else
		  render :new
		end
	end

	private

	def set_product_item
		@product_item = ProductItem.find(params[:id])
	end

	def product_item_params
		params.require(:product_item).permit(:product_id)
	end

end
