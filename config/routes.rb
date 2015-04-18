Rails.application.routes.draw do
  post "songs/upload", :as => "upload"
  get "songs/delete", :as => "delete"

  resources :songs, only: [:show, :index]

  root 'songs#index'
end
