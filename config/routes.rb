Rails.application.routes.draw do

  resources :songs, only: [:show, :delete, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 post "users/index", to: 'users#check_creds', as: 'check_creds'
# get "users/playlist/new", to: 'users#create_playlist', as: 'create_playlist'
# get "users/register", to: 'users#register', as: 'register'
post "users/new", to: 'users#create'

resources :users, only: [:new,:show]
resources :playlists, only: [:new, :create]




  root "users#index"
end
