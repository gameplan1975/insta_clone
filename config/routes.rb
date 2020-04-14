Rails.application.routes.draw do
  get "/" => "blogs#top"
  resources :blogs
    #resources :sessions
  resources :users
    #resources :blogs do
    #collection do
    #post :confirm
    #end
    #end
end
