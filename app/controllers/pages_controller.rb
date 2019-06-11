class PagesController < ApplicationController
  def index
    @products = Product.all

    @product_list = Product.order(selling: :desc).first(5)

    @recents = Product.order(created_at: :desc).first(5)

    @search_product = Product.new
    
    @category = Category.find_by(name: params[:category])
    
    # @product = @category.product

    @order_item = current_order.order_items.new
  end
end