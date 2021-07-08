Rails.application.routes.draw do
  root to: "home#index"

  get '/home', to: "home#index"
  get 'employee', to: "employee#employee_page"
  post '/employee', to: "employee#create"
  get '/employees', to: "employee#show_record"
  get '/department', to: "department#department_page"
  get '/departments', to: "department#show_department"
  get '/project', to: "project#project_page"
  get '/projects', to: "project#project_records"
end
