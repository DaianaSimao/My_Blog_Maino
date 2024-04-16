Rails.application.routes.draw do
  devise_for :users, controllers: { 
    registrations: 'users/registrations',
    sessions: 'users/sessions'
   }
  resources :perfis

  get "home/index"
  root "home#index"
end
