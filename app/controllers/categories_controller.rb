class CategoriesController < ApplicationController
  def show
    @category = Category.find_by(name: params[:category])
    @products = @category.products
  end
end