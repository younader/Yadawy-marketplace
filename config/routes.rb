
Rails.application.routes.draw do
  namespace :admin do
      resources :buyerinfos
      resources :contacts
      resources :products
      resources :users
      resources :sellers
      resources :buyers
      resources :carts
      resources :categories
      resources :comments
      resources :line_items
      resources :orders
      resources :sellerinfos
      root to: "buyerinfos#index"
    end
  get 'comments/index'
  get 'comments/new'
  resources :orders
  resources :line_items
  resources :carts
  devise_for :sellers
  resources :sadmin , only: [:index]
  get 'sadmin/products' => "sadmin#listproducts"
  get 'sadmin/products/new' =>"sadmin#newproduct"
  get 'sadmin/orders' =>"sadmin#listorders"

  devise_for :buyers
  resources :products do
    resources :comments
  end
  resources :buyerinfos
  resources :sellerinfos
  get '/login'=> "sessions#new", as:"login"

  get 'sessions/create'
  get'sessions/new'
  get 'sessions/destroy'

  resources :users
  resources :contacts ,only: [:new, :create,:index]
  #if Rails.env.development?
  #  resources :contacts
  #end

  get 'static_pages/home'

  get 'static_pages/about'

  get 'static_pages/guide'

  get 'static_pages/signup'

  get 'static_pages/login'


  root 'static_pages#home'


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
