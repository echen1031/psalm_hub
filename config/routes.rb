Rails.application.routes.draw do
  post "songs/upload", :as => "upload"
  get "songs/delete", :as => "delete"

  #get 'songs/index'
  root 'songs#index'
end
