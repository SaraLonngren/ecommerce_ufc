class PagesController < ApplicationController
  def index
    @products = Product.all

    @product_list = Product.order(selling: :desc)

    @recentes = Product.order(created_at: :desc)
    
  end
end