Rails.application.routes.draw do
  devise_for :users
  resources :perfis

  get "home/index"
  root "home#index"
end
