class PagesController < ApplicationController
  def index
    @products = Product.all

    @product_list = Product.order(selling: :desc)
  end
end