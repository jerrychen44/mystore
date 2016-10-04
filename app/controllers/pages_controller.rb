class PagesController < ApplicationController
  def index
    # [Jerry] add for Store page
    @product = Product.all
  end

  # [Jerry] add for Store page
  def shop
    @product = Product.all
  end
end
