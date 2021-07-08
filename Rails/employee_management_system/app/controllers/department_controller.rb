class DepartmentController < ApplicationController
  def department_page
  end
  def show_department
    @dep = Department.all
  end

end
