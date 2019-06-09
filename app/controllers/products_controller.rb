class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
    @category = @product.category
    @order_item = current_order.order_items.new
  end

  def query
    @product = Product.new(product_params)
    @products = Product.where(category_id: @product.category_id)

    redirect_to search_path(@products)
  end 

  def search
  end 

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def product_params
    params.require(:product).permit(:name, :category_id)
  end

end