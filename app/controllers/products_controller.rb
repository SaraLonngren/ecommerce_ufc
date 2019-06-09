class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
    @category = @product.category
    @order_item = current_order.order_items.new
  end

  def query
  end 

  def search
  end 

end