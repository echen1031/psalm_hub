Rails.application.routes.draw do

  devise_for :users
  post "songs/upload", :as => "upload"
  get "songs/delete", :as => "delete"

  resources :songs, only: [:show, :index, :new, :create, :edit, :update] do
    resources :likes, only: [:create, :destroy]
  end
  resources :bible_verses

  root 'welcome#index'
end
