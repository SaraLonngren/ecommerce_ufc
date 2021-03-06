class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :current_order

  layout :layout_by_resource

  def configure_permitted_parameters
    added_attrs = [:name, :email, :password, :password_confirmation, :remember_me, :salary]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

  def layout_by_resource
    if devise_controller? && resource_name == :employee && action_name == "new"
      "admin_lte_2_login"
    else
      "application"
    end
  end

  def current_order
    if cookies[:order_id]
      begin
        Order.find(cookies[:order_id])
      rescue
        Order.new
      end
    else
      Order.new
    end
  end
end
