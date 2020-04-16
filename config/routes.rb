Rails.application.routes.draw do
  get 'sessions/new'
  get "/" => "blogs#top"
  get "blogs/list" => "blogs#list"
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :blogs 
  post "favorites/:blog_id/create" => "favorites#create"

    #resources :blogs do
    #collection do
    #post :confirm
    #end
    #end
end
