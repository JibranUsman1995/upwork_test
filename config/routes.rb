Rails.application.routes.draw do
  resources :cash_management_tables
  resources :companies
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'companies#index'
end
