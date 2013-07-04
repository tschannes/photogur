
Photogur::Application.routes.draw do
  resources :pictures
  resources :users #do
  #   member do
  #     get :following, :followers
  #   end
  # end
  resources :sessions, only: [:new, :create, :destroy]
  # resources :microposts, only: [:create, :destroy]
  # resources :relationships, only: [:create, :destroy]

  # root to: 'pictures'
  root :controller => "pictures", :action => "index"

  match '/signup',   to: 'users#new', via: :get
  match '/signin',   to: 'sessions#new', via: :get
  match '/signout',  to: 'sessions#destroy', via: :delete
  match '/signout',  to: 'sessions#destroy', via: :get

end