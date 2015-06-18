VMT::Application.routes.draw do



  devise_for :prs

  devise_scope :pr do
    
    get "presse/login", :to => "devise/sessions#new"

  end

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :orders
  resources :ccpayments
  resources :concerts
  resources :artists, only: [:new, :create]
  resources :photos, only: [:index,:new, :create]

  root to: "static#home"
  
  get '/send_payment_info', to: 'orders#payment_info_mail'
  get '/succes', to: 'static#succes'
  get '/billetterie',   to: 'static#billetterie'
  get '/programme',   to: 'concerts#programme2015'
  get '/programme2012', to: 'concerts#programme2012'
  get '/programme2013', to: 'concerts#programme2013'
  get '/programme2011', to: 'concerts#programme2011'
  get '/programme2014', to: 'concerts#programme2014'
  get '/programme2015', to: 'concerts#programme2015'
  get '/presse',   to: 'static#presse'
  get '/association', to: 'static#association'
  get '/contact',     to: 'static#contact'
  get '/status', to: 'static#status'
  get '/arthus_piano_trio', to: 'static#arthus'
  get '/ophelie_gaillard', to: 'static#ophelie'
  get '/intermezzo', to: 'static#intermezzo'
  get '/nemanja_radulovic_et_laure_favre_kahn', to: 'static#nemanja'
  get '/khatia_et_gvantsa_buniatishvili', to: 'static#khatia'
  get '/espacepresse', to: 'static#espacepresse'
  get '/Y0yNFY88', to: 'static#Y0yNFY88' #ssl identity thing


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
