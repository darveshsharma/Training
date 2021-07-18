class DepartmentWorker
  include Sidekiq::Worker

  def perform()
    Rails.application.load_seed
    puts "Data Added Using Seeds"
  end
end
