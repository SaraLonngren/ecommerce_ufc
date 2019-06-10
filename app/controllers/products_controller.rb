class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
    @category = @product.category
    @order_item = current_order.order_items.new
  end

  def query
   #@product = Product.new(product_params)
    #@products = Product.where(category_id: @product.category_id)
    if params[:search]
      #@search = Product.where(category_id: params[:category_id])
      @search = Product.find(:all, conditions: ['name LIKE ?',"%#{params[:name]}"] )#(category_id: params[:category_id])
    end
    redirect_to search_path(@search)
  end 

  def search
    if !params[:category_id].eql? '0'
      @search = Product.where(category_id: params[:category_id].to_i)
      #@search = Product.where("name LIKE '%#{params[:name]}%'")
      #(:all, conditions: ['name LIKE ?',"%#{params[:name]}"] )#(category_id: params[:category_id])
    else
      @search = Product.all
    end #if
    if !params[:name].blank? || !params[:name].nil?
      @search_again = @search
      @search = Array.new
      @search_again.each do |s|
        if s.name.downcase.include?(params[:name].downcase)
          @search << s
        end
      end
    end
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

  def search_params
    params.require(:search).permit(:name, :category_id)
  end

end