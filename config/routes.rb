Rails.application.routes.draw do
  get 'appointments/index'
  get 'appointments/show'
  get 'appointments/update'
  get 'appointments/destroy'
  get 'appointments/create'
  get 'furnitures/index'
  get 'furnitures/show'
  get 'furnitures/update'
  get 'furnitures/destroy'
  get 'furnitures/create'
  devise_for :users, path: "", path_names: {
                       sign_in: "login",
                       sign_out: "logout",
                       registration: "signup",
                     },
                     controllers: {
                       sessions: "users/sessions",
                       registrations: "users/registrations",
                     }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
