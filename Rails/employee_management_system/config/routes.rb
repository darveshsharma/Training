Rails.application.routes.draw do
  root to: "home#index"

  get '/home', to: "home#index"
  get 'employee', to: "employee#employee_page"
  post '/employees', to: "employee#create"
  get '/employees', to: "employee#show_record"
  get 'employee/:id/edit', to: 'employee#edit_employee'
  patch 'employee.:id', to: 'employee#update_employee'
  delete 'employee/:id/delete', to: 'employee#delete_employee'
  get '/department', to: "department#department_page"
  post '/departments', to: "department#create"
  get '/departments', to: "department#show_department"
  get '/project', to: "project#project_page"
  post '/projects', to: "project#create"
  get '/projects', to: "project#project_records"
  get 'project/:id/edit', to: 'project#edit_project'
  patch 'project.:id', to: 'project#update_project'
  delete 'project/:id/delete', to: 'project#delete_project'
end
