class DepartmentsController < ApplicationController
  before_action :set_department, only: [:edit, :update, :show, :destroy]

 def index
   @departments = Department.all
 end


 def new
  @department = Department.new
 end
 def show
end
 def create
   @department = Department.new(department_params)
   if @department.save
     flash[:notice] = "Department was successfully created"
     redirect_to department_path(@department)
   else
     render 'new'
   end
   def edit
   end
   def update
     if @department.update(department_params)
      flash[:notice] = "Department was updated"
      redirect_to department_path(@department)
     else
      flash[:notice] = "Department was not updated"
      render 'edit'
     end
    end
  end
  def destroy
    @department.destroy
    flash[:notice] = "Department was deleted"
    redirect_to departments_path
   end


  private
    def department_params
     params.require(:department).permit(:name)
    end
  end
  def set_department
    @department = Department.find(params[:id])
   end
