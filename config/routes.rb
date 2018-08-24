Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "no_matches", to: "pages#no_matches"
  resources :artworks, only: [:index, :show]
  resources :users, only: [:show]
  resources :artists, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
