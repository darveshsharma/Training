class EmployeeMailer < ApplicationMailer
  def welcome_email
    @employee = Employee.find(params[:employee])
    mail(to: @employee.email, subject: "welcome to the team")
  end
end
