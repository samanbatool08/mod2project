Rails.application.routes.draw do
  resources :students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root 'students#welcome'

get 'signin', to: "students#signin"

get 'home', to: "students#home"

get 'signout', to: "students#signout"

post 'signin', to: "students#after_signin"

get 'search', to: "students#search"
post 'search', to: "students#match"
get 'match', to: "students#showmatch"

get 'application', to: "students#application"
post 'applications', to: "students#home"
get 'applications', to: "students#home"

get 'showapplication', to: "applications#showapplication"

end
