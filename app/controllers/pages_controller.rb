class PagesController < ApplicationController

  # under /controllers/concerns/current_cart.rb
  include CurrentCart
  before_action :set_cart, only: [:index, :shop]

  def index
    # [Jerry] add for Store page
    @product = Product.all
  end

  # [Jerry] add for Store page
  def shop
    @product = Product.all
  end
end
