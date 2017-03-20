Rails.application.routes.draw do
  resources :names
  get 'users/new'

  get 'sports/index'
  get 'sports/profile'
  get 'sports/create_league'
  get 'sports/find_league'
  get 'games/new'
  get 'games/index'
  get 'games/meet_details'
  get 'games/edit'
  put 'games/edit'
  post 'games/edit'

  
  match '/games.:id', :to => 'games#update', :via => [:patch]
  match '/meets.:id', :to => 'meets#update', :via => [:patch]
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".


  resources :meets
  resources :games
  resources :sports
  resources :profiles, only: [:edit]
  # You can have the root of your site routed with "root"
  root 'games#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  resources :sports
  
  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
