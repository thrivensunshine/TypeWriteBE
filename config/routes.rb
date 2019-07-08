Rails.application.routes.draw do
  post "/login", to: "users#login"
  get "/persist", to: "users#persist"
  post "users/:id", to: "users#create"

  resources :user_groups
  resources :comments
  resources :pieces
  resources :users
  resources :characters
  resources :prompts
  resources :groups

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
