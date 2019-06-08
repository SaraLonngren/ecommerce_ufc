class OrderItemsController < ApplicationController

  def create
    @order = current_order

    @item = @order.order_items.find_by(product_id: order_item_params[:product_id])
    if @item.present?
      @item.quantity += order_item_params[:quantity].to_i
      @item.save
    else
      @item = @order.order_items.new(order_item_params)
    end
    @order.save!
    cookies[:order_id] = @order.id
  end

  def destroy
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.destroy
    @order.save
  end

  private

  def order_item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end