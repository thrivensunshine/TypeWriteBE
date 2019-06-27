Rails.application.routes.draw do
  resources :comments
  resources :characters
  resources :user_groups
  resources :prompts
  resources :pieces
  resources :users
  resources :groups
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
