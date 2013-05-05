VMT::Application.routes.draw do



  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :orders
  resources :ccpayments
  resources :concerts

  root to: "static#home"
  
  match '/send_payment_info', to: 'orders#payment_info_mail'
  match '/succes', to: 'static#succes'
  match '/billetterie',   to: 'orders#new'
  match '/programme',   to: 'concerts#index'
  match '/presse',   to: 'static#presse'
  match '/association', to: 'static#association'
  match '/contact',     to: 'static#contact'
  match '/status', to: 'static#status'
  match '/arthus_piano_trio', to: 'static#arthus'
  match '/ophelie_gaillard', to: 'static#ophelie'
  match '/intermezzo', to: 'static#intermezzo'
  match '/nemanja_radulovic_et_laure_favre_kahn', to: 'static#nemanja'
  match '/khatia_et_gvantsa_buniatishvili', to: 'static#khatia'


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
