class Admin::BaseController < ActionController::Base
  before_action :authenticate_employee!
  before_action :set_menu_variables

  layout 'admin_lte_2'

  def set_menu_variables
    @controller = params[:controller]
  end

end