
Photogur::Application.routes.draw do
 
  root :controller => "pictures", :action => "index"
  
  resources :pictures, :users
  
end
