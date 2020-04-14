Rails.application.routes.draw do
  get 'sessions/new'
  get "/" => "blogs#top"
  resources :blogs
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
    #resources :blogs do
    #collection do
    #post :confirm
    #end
    #end
end
