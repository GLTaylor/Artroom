Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :artworks, only: [:show] do
    resources :hangings, only: [:create]
  end
  resources :users, only: [:show]
  resources :artists, only: [:show]
  resources :hangings, only: [:update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
