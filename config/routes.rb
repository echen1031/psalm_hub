Rails.application.routes.draw do
  get "songs/upload", :as => "upload"
  get "songs/delete", :as => "delete"

  #get 'songs/index'
  root 'songs#index'
end
