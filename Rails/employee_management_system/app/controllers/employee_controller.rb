class EmployeeController < ApplicationController
  def employee_page
    @employee = Employee.new
    @employee.build_nominee
  end
  def show_record
    # @count = Employee.count
    # @pages = (@count/2.0).ceil
    # @page = params.fetch(:page, 0).to_i
    # @employees = Employee.offset(@page*2).limit(2)
    @employees = Employee.paginate(:page => params[:page] , :per_page => 2)
    id = params.fetch(:mail,0).to_i
    if id > 0
      EmployeeMailer.with(employee: id).welcome_email.deliver
      redirect_to '/employees'
    end
    checkbox = params.fetch(:check ,0).to_i
    if checkbox > 0
      if Employee.find(checkbox).active
        Employee.find(checkbox).update(active: false)
        redirect_to '/employees'
      else
        Employee.find(checkbox).update(active: true)
        redirect_to '/employees'
      end
    end
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
    @employee.update(name: params[:employee][:name], last_name: params[:employee][:last_name], gender: params[:employee][:gender] , dob: params[:employee][:dob], email: params[:employee][:email])
    redirect_to '/employees'
  end
  
  def delete_employee
    @employee = Employee.find(params[:id])
    @employee.delete
    redirect_to '/employees'
  end
  
  def employee_params
    params.require(:employee).permit(
      :name, :last_name, :gender, :dob, :doj , :department_id, :email,
      nominee_attributes: [:id, :name, :contact_number])
  end

end