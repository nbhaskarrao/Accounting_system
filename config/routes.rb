Rails.application.routes.draw do
  devise_for :users
  resources :partner_details
  resources :account_details
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
