Rails.application.routes.draw do
  devise_for :users
  root 'recipes#index'
  resources :recipes
  resources :ingredients  
end
