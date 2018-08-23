Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

#   devise_scope :user do
#   delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
# end

  root to: 'pages#home'
  resources :artworks, only: [:show]
  resources :users, only: [:show]
  resources :artists, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
