Rails.application.routes.draw do
<<<<<<< HEAD

  get "home/dashboard"
  devise_for :users
  root :to => "home#dashboard"
=======
  devise_for :users
>>>>>>> 3817c6139f353c79337e72f482304d30e6969c11
  resources :partner_details
  resources :account_details
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
