Rails.application.routes.draw do

  post "songs/upload", :as => "upload"
  get "songs/delete", :as => "delete"

  resources :songs, only: [:show, :index, :new, :create, :edit, :update]
  resources :bible_verses, only: [:show, :index]

  root 'welcome#index'
end
