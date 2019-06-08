class CheckoutController < ApplicationController
  before_action :check_order_items
  before_action :authenticate_user!
  def edit
    @order = current_order
    @items = @order.order_items
  end

  def update
    @order = current_order
    order_params[:shipment_address] = order_params[:billing_address] if order_params[:shipment_address].blank?
    order_params[:shipment_city] = order_params[:billing_city] if order_params[:shipment_city].blank?
    order_params[:shipment_country] = order_params[:billing_country] if order_params[:shipment_country].blank?
    order_params[:shipment_zip] = order_params[:billing_zip] if order_params[:shipment_zip].blank?
    respond_to do |format|
      if @order.update(order_params.merge(status: 'pago', user_id: current_user.id))
        cookies.delete(:order_id)
        format.html { redirect_to root_path(@order)}
      else
        format.html { render :edit }
      end
    end
  end

  private

  def order_params
    params.require(:order).permit(:user_id, :status, :total, :shipment_address, :shipment_city, :shipment_state, :shipment_country, :shipment_zip, :payment_method,
                                    :shipment_telephone, :billing_address, :billing_city, :billing_state, :billing_country, :billing_zip, :billing_telephone, :note)
  end

  def check_order_items
    if current_order.order_items.count == 0
      redirect_to root_path 
    end
  end
end