Rails.application.routes.draw do
  get "/" => "blogs#top"
  resources :blogs
    #resources :sessions
  resources :users, only: [:new, :create, :show, :index, :edit]
    #resources :blogs do
    #collection do
    #post :confirm
    #end
    #end
end
