Rails.application.routes.draw do

  resources :songs, only: [:show, :delete, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 post "users/index", to: 'users#check_creds', as: 'check_creds'
# get "users/playlist/new", to: 'users#create_playlist', as: 'create_playlist'
# get "users/register", to: 'users#register', as: 'register'
post "users/new", to: 'users#create'
get  "playlists/join", to: 'playlists#join_form', as: 'join_playlist'
post "playlists/join", to: 'playlists#join'
delete "songs/join", to: 'song#destroy', as: 'delete_song_path'

resources :users, only: [:new,:show]
resources :playlists, only: [:new, :create, :index]

  root "users#index"
end
