class Admin::EmployeesController < Admin::BaseController
    before_action :set_employee, only: [:show, :edit, :update, :destroy]

    def index
        @employees = Employee.all
    end 

    def new
        @employee = Employee.new
    end 

    def create

        @employee = Employee.new(employee_params)

            if @employee.save
             redirect_to  admin_employees_path , notice: 'Employee was successfully created.' 
            else
              render :new 
            end

    end

    def edit
    end 

    def update
        respond_to do |format|
            if @employee.update(employee_params)
              format.html { redirect_to admin_employee_path(@employee), notice: 'Employee was successfully updated.' }
              format.json { render :show, status: :ok, location: @pemployee }
            else
              format.html { render :edit }
              format.json { render json: @employee.errors, status: :unprocessable_entity }
            end
          end
    end 

    def show
    end 

    def destroy

        if current_employee == @employee
            redirect_to admin_employees_url, notice: 'Meu chapa, você não pode se apagar né?' 
        else
        @employee.destroy
            redirect_to admin_employees_url, notice: 'Employee was successfully destroyed.' 
        end 
        
    end 

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employee).permit(:name, :email, :salary, :password)
    end

end