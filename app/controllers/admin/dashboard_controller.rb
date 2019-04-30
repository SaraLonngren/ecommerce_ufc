class Admin::DashboardController < Admin::BaseController
  def index
    @employees = Employee.all
  end
end