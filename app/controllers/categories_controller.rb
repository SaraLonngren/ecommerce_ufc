class CategoriesController < ApplicationController
  def show
    @category = Category.find_by(name: params[:category])
    @products = @category.products
    @order_item = current_order.order_items.new

    @product_list = Product.order(selling: :desc)
  end
end