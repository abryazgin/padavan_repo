class ProductsController < ApplicationController
  def index
    @products = Product.where(:category_id => params[:id])
  end
end
