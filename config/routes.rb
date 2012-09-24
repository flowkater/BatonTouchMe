Batontouchme::Application.routes.draw do
  resources :reviews
  resources :batons, only: [:index, :create, :update, :destroy, :edit] do
    collection do
      get 'daniel'
      get 'casa'
      get 'hulk'
      get 'think'
    end

    member do
      get 'useredit'
    end
  end

  resources :keys  
  resources :sessions, only: [:new, :create, :destroy]

  match '/signin', to:'sessions#new'
  match '/signout', to:'sessions#destroy', via: :delete

  match '/home', to: 'main#home'
  match '/info', to: 'main#info'
  match '/runners', to: 'main#runners'
  match '/find', to: 'main#find'

  match '/runners/daniel', to: 'main#daniel'
  match '/runners/casanova', to: 'main#casanova'
  match '/runners/hulk', to: 'main#hulk'
  match '/runners/thinkerbell', to: 'main#thinkerbell'

  match '/runners/daniel/regist1', to: 'main#regist1'
  match '/runners/casanova/regist2', to: 'main#regist2'
  match '/runners/hulk/regist3', to: 'main#regist3'
  match '/runners/thinkerbell/regist4', to: 'main#regist4'

  match '/runners/daniel/create1', to: 'main#create1', via: [:post]
  match '/runners/casanova/create2', to: 'main#create2', via: [:post]
  match '/runners/hulk/create3', to: 'main#create3', via: [:post]
  match '/runners/thinkerbell/create4', to: 'main#create4', via: [:post]

  match '/runners/regist', to: 'main#regist'
  match '/runners/create', to: 'main#create'

  root to: "main#home"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
