class DepartmentController < ApplicationController
  def department_page
    @deparment = Department.new
  end


  def show_department
    @departments = Department.all
  end

  def create
    @department = Department.new(department_params)
    @department.save
    redirect_to '/departments'
  end
  
  def department_params
    params.require(:department).permit(:name)
  end

end
