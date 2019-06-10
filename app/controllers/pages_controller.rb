class PagesController < ApplicationController
  def index
    @products = Product.all

    @product_list = Product.order(selling: :desc)

    @recentes = Product.order(created_at: :desc)

    @search_product = Product.new
    
    @category = Category.find_by(name: params[:category])
    
    # @product = @category.product

    # @order_item = current_order.order_items.new
  end
end