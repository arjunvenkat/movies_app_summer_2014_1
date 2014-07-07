Rails.application.routes.draw do
  # Routes for the Role resource:
  # CREATE
  get '/new_role' => 'roles#new'
  get '/create_role' => 'roles#create'

  # READ
  get '/roles' => 'roles#index'
  get '/roles/:id' => 'roles#show'

  # UPDATE
  get '/roles/:id/edit' => 'roles#edit'
  get '/roles/:id/update' => 'roles#update'

  # DELETE
  get '/roles/:id/destroy' => 'roles#destroy'
  #------------------------------

  # Routes for the Actor resource:
  # CREATE
  get '/new_actor' => 'actors#new'
  get '/create_actor' => 'actors#create'

  # READ
  get '/actors' => 'actors#index'
  get '/actors/:id' => 'actors#show'

  # UPDATE
  get '/actors/:id/edit' => 'actors#edit'
  get '/actors/:id/update' => 'actors#update'

  # DELETE
  get '/actors/:id/destroy' => 'actors#destroy'
  #------------------------------

  # Routes for the Director resource:
  # CREATE
  get '/new_director' => 'directors#new'
  get '/create_director' => 'directors#create'

  # READ
  get '/directors' => 'directors#index'
  get '/directors/:id' => 'directors#show'

  # UPDATE
  get '/directors/:id/edit' => 'directors#edit'
  get '/directors/:id/update' => 'directors#update'

  # DELETE
  get '/directors/:id/destroy' => 'directors#destroy'
  #------------------------------

  # Routes for the Movie resource:
  # CREATE
  get '/new_movie' => 'movies#new'
  get '/create_movie' => 'movies#create'

  # READ
  get '/movies' => 'movies#index'
  get '/movies/:id' => 'movies#show'

  # UPDATE
  get '/movies/:id/edit' => 'movies#edit'
  get '/movies/:id/update' => 'movies#update'

  # DELETE
  get '/movies/:id/destroy' => 'movies#destroy'
  #------------------------------

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

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
