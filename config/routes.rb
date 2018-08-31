Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

#   devise_scope :user do
#   delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
# end

  root to: 'pages#home'
  get "no_matches", to: "pages#no_matches"
  resources :artworks, only: [:index, :show] do
    resources :hangings, only: [:create]
  end
  resources :users, only: [:show]
  resources :artists, only: [:show]
  resources :hangings, only: [:update, :destroy]
  resources :publicusers, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
