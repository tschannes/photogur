# Photogur::Application.routes.draw do

#   root :to => "pictures#index"

#   get 'pictures', to: 'pictures#index'

#   post 'pictures', to: "pictures#create"

#   get 'pictures/:id', to: 'pictures#show', as: "picture"

#   get 'pictures/:id/edit', to: "pictures#edit", as: "edit_picture"
  
#   get 'pictures/new', to: 'pictures#new'

#   # get 'pictures/:id' => 'pictures#show', as: "picture"
#   # The priority is based upon order of creation: first created -> highest priority.
#   # See how all your routes lay out with "rake routes".

#   # You can have the root of your site routed with "root"
#   # root 'welcome#index'

#   # Example of regular route:
#   #   get 'products/:id' => 'catalog#view'

#   # Example of named route that can be invoked with purchase_url(id: product.id)
#   #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

#   # Example resource route (maps HTTP verbs to controller actions automatically):
#   #   resources :products

#   # Example resource route with options:
#   #   resources :products do
#   #     member do
#   #       get 'short'
#   #       post 'toggle'
#   #     end
#   #
#   #     collection do
#   #       get 'sold'
#   #     end
#   #   end

#   # Example resource route with sub-resources:
#   #   resources :products do
#   #     resources :comments, :sales
#   #     resource :seller
#   #   end

#   # Example resource route with more complex sub-resources:
#   #   resources :products do
#   #     resources :comments
#   #     resources :sales do
#   #       get 'recent', on: :collection
#   #     end
#   #   end
  
#   # Example resource route with concerns:
#   #   concern :toggleable do
#   #     post 'toggle'
#   #   end
#   #   resources :posts, concerns: :toggleable
#   #   resources :photos, concerns: :toggleable

#   # Example resource route within a namespace:
#   #   namespace :admin do
#   #     # Directs /admin/products/* to Admin::ProductsController
#   #     # (app/controllers/admin/products_controller.rb)
#   #     resources :products
#   #   end
# end

Photogur::Application.routes.draw do
  # post 'pictures' => "pictures#create"

  # get 'pictures' => 'pictures#index'
  # get 'pictures/new' => 'pictures#new'
  # # patch 'pictures/:id/edit' => "pictures#edit", as: "edit_picture"
  # get 'pictures/:id/edit' => "pictures#edit", as: "edit_picture"
  # delete 'pictures/:id/destroy' => "pictures#destroy", as: "destroy_picture"
  # get 'pictures/:id' => 'pictures#show', as: "picture"
  resources :pictures
  root :to => "pictures#index"
end
