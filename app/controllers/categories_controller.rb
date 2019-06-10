class CategoriesController < ApplicationController
  def show
    @category = Category.find_by(name: params[:category])
    @products = @category.products
    @order_item = current_order.order_items.new

    @product_list = Product.order(selling: :desc)
  end

  def search
  	#mais vendidos
  	@product_list = Product.order(selling: :desc)

  	#carrinho
  	@order_item = current_order.order_items.new

    if !params[:category_id].eql? '0'
      @search = Product.where(category_id: params[:category_id].to_i)
    	@category = Category.find(params[:category_id])
    else
      @search = Product.all
      @category = Category.new(name: 'Tudo')
    end
    if !params[:name].blank? || !params[:name].nil?
      @search_again = @search
      @search = Array.new
      @search_again.each do |s|
        if s.name.downcase.include?(params[:name].downcase)
          @search << s
        end
      end
    end
    @products = @search
  end
end