class DepartmentWorker
  include Sidekiq::Worker

  def perform(id)
    Employee.create(name: 'Neha',last_name: 'Verma', gender: 'F' , dob: Date.parse("17/05/1998"), doj: Date.parse("01/05/2021"), department_id: id, email: "neah.verma@gmail.com")
  end
end
