Rails.application.routes.draw do
  root to: "home#index"

  get '/home', to: "home#index"
  get 'employee', to: "employee#employee_page"
  get '/department', to: "department#department_page"
  get '/project', to: "project#project_page"
end
