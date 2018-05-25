Rails.application.routes.draw do
  resources :change_salaries
  resources :disconnexions
  resources :vacations
  resources :transferences
  resources :change_functions
  resources :cost_centers
  resources :branches
  resources :rhs
  resources :companies
  resources :users
  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
