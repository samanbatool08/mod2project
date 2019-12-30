Rails.application.routes.draw do
  resources :student_activities
  resources :activities
  resources :college_activities
  resources :colleges
  resources :applications
  resources :students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
