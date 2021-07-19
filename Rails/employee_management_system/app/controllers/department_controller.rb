class DepartmentController < ApplicationController
  def department_page
    @department = Department.new
  end


  def show_department
    @departments = Department.all
  end

  def create
    @department = Department.new(department_params)
    @department.save
    id = @department.id
    DepartmentWorker.perform_async(id)
    redirect_to '/departments'
  end

  def edit_department
    @department =  Department.find(params[:id])
  end
  
  def update_department
    @department = Department.find(params[:id])
    @department.update(name: params[:department][:name])
    redirect_to '/departments'
  end
  
  def delete_department
    @department = Department.find(params[:id])
    @department.delete
    redirect_to '/departments'
  end
  
  def department_params
    params.require(:department).permit(:id, :name)
  end

end
