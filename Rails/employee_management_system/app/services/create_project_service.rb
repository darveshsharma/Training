class CreateProjectService
  attr_reader :name, :status, :deploying_date
  
  def initialize(name, status, deploying_date)
    @name = name
    @status = status
    @deploying_date = deploying_date
  end
  
  def call
    Project.create(name: @name, status: @status, deploying_date: @deploying_date)
    
  end
end