Rails.application.routes.draw do
  resources :books
  resources :genres
  resources :titles

  resources :authors do
    resources :books, only: [:new, :create]
  end
  
  # root to: 'home#index'

  devise_for :users, path: '', path_names: { sign_in: "connexion", sign_out: "deconnexion", sign_up: "inscription", edit: "compte" }


end
