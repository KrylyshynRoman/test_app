class EmployeesController < ApplicationController
  before_action :set_employee, only: [:edit, :update, :show, :destroy]
 def index
   @employees = Employee.all
 end

 def new
  @employee = Employee.new
 end
 def show
end

 def create
  @employee = Employee.new(employee_params)
  if @employee.save
    flash[:notice] = "Employee was successfully created"
    redirect_to employee_path(@employee)
  else
    render 'new'
 end

 def edit
 end

 def update
   if @employee.update(employee_params)
    flash[:notice] = "Employee was updated"
    redirect_to employee_path(@employee)
   else
    flash[:notice] = "Employee was not updated"
    render 'edit'
   end
  end
end
def destroy
  @employee.destroy
  flash[:notice] = "Employee was deleted"
  redirect_to employees_path
 end


 private
   def employee_params
    params.require(:employee).permit(:name, :active, :department_id)
   end
 end
 def set_employee
   @employee = Employee.find(params[:id])
  end
