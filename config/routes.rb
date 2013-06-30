
Photogur::Application.routes.draw do
 
  root :controller => "pictures", :action => "index"
  
  resources :pictures, :users
  resources :sessions, only: [:new, :create, :destroy]
  
  match '/signup', to: 'users#new', via: :get
  match '/signin', to: 'sessions#new', via: :get
  match '/signout', to: 'sessions#destroy', via: :delete

end
