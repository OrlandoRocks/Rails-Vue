Rails.application.routes.draw do
  post '/login', to: 'auth#login'
  post '/logout', to: 'auth#logout'
  post '/signup', to: 'users#create'
  get '/member-data', to: 'members#show'
  get '/users', to: 'members#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :roles
  # Defines the root path route ("/")
  # root "articles#index"
end
