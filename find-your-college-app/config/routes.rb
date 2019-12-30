Rails.application.routes.draw do
  resources :students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root 'students#welcome'

get 'signin', to: "students#signin"

get 'home', to: "students#home"

get 'signout', to: "students#signout"

post 'signin', to: "students#after_signin"

end
