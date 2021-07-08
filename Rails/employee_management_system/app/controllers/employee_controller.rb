class EmployeeController < ApplicationController
  def employee_page
    @employee = Employee.new
  end
  def show_record
    @employees = Employee.all
  end
  def create
    #Employee.create(name: params[:employee][:name],last_name: params[:employee][:last_name], gender: params[:employee][:gender],dob: params[:employee][:dob], doj: params[:employee][:doj])
    @employee = Employee.new(employee_params)
    @employee.save
    redirect_to '/employees'
  end
  
  def employee_params
    params.require(:employee).permit(:name, :last_name, :gender, :dob, :doj , :department_id)
  end
end