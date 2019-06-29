Rails.application.routes.draw do
  resources :user_groups
  resources :comments
  resources :pieces
  resources :users
  resources :characters
  resources :prompts
  resources :groups
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
