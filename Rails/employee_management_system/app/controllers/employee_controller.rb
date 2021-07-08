class EmployeeController < ApplicationController
  def employee_page
  end
  def show_record
    @employees = Employee.all
  end
end
