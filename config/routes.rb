Rails.application.routes.draw do
  get "admins/:admin_id/student_tasks/:id", :to => "tasks#singletask"
  get "admins/student_tasks/:id", :to => "tasks#studenttasks"
  get "admins/:admin_id/tasks/new", :to => "tasks#new"
  get "admins/:admin_id/tasks/:id", :to => "tasks#show"
  get "/admins/:admin_id/edit", :to => "admins/registrations#edit"
  get "tasks/index"
  get "tasks/show"
  get "tasks/new"
  get "tasks/edit"
  get "student/index"
  get "admin/index"
  get "/home_student/:home_student_id/students", :to=> "students#homeshow"

  devise_for :students, controllers: { registrations: "students/registrations" }
  get "home_admin/index"
  devise_for :admins, controllers: { registrations: "admins/registrations" }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  resources "home_admin" do
    resources "students"
  end
  resources "home_student" do
    resources "students"
  end


  resources "students" 
  
  resources "home"
  resources "admins" do
    resources "tasks"
  end
  resources "tasks"
end
