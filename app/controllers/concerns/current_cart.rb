module CurrentCart

	private
	#trying to get the session id for this cart,
	#if find failed, create a new one, and save to session
	#we can use this in cart controller, lets create a cart controller.
	def set_cart
		@cart = Cart.find(session[:cart_id])
		rescue ActiveRecord::RecordNotFound
		@cart = Cart.create
		session[:cart_id] = @cart.id
	end

end
