Rails.application.routes.draw do
  resources :bible_verses

  post "songs/upload", :as => "upload"
  get "songs/delete", :as => "delete"

  resources :songs, only: [:show, :index, :new, :create, :edit, :update]

  root 'songs#index'
end
