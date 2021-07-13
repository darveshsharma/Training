class EmployeeController < ApplicationController
  def employee_page
    @employee = Employee.new
  end
  def show_record
    @employees = Employee.all
  end
  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to '/employees'
    else
      redirect_to '/employee'
    end
  end
  
  def edit_employee
    @employee =  Employee.find(params[:id])
  end
  
  def update_employee
    @employee = Employee.find(params[:id])
    @employee.update(name: params[:employee][:name], last_name: params[:employee][:last_name], gender: params[:employee][:gender] , dob: params[:employee][:dob], doj: params[:employee][:doj])
    redirect_to '/employees'
  end
  
  def delete_employee
    @employee = Employee.find(params[:id])
    @employee.delete
    redirect_to '/employees'
  end
  
  def employee_params
    params.require(:employee).permit(:name, :last_name, :gender, :dob, :doj , :department_id)
  end

end