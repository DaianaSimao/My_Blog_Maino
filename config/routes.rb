Rails.application.routes.draw do
  resources :posts
  devise_for :users, controllers: { 
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    mailer: "users/mailer",
    confirmations: "users/confirmations",
    unlocks: "users/unlocks",
    passwords: "users/passwords",
   }
  resources :perfis

  get "home/index"
  root "home#index"
end
