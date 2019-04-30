class Admin::BaseController < ActionController::Base
  before_action :authenticate_employee!

  layout 'admin'

end