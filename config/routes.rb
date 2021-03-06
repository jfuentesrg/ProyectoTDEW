EligeTuProfe::Application.routes.draw do
  root :to => "results#last"

#  resources :items
#  resources :evaluation_details
#  resources :evaluations
#  resources :forms

   # get "sessions/new"

   # get "sessions/create"

   # get "sessions/failure"

   match '/results', :to => 'results#index'
   match '/results/:id', :to => 'results#show', :as => 'details'
   match '/last_results', :to => 'results#last'
   match '/evaluations', :to => 'results#last'
   match '/evaluate', :to => 'evaluations#index'
   match 'evaluations/:teacher_id', :to => 'evaluations#new', :as => 'evaluate'
   match '/evaluations/:evaluation/save', :to => 'evaluations#create', :as => 'save_evaluation'


#   resources :teachers
  
	 get   '/login', :to => 'sessions#new', :as => :login
	 match '/auth/:provider/callback', :to => 'sessions#create'
	 match '/auth/failure', :to => 'sessions#failure'
   get   '/logout', :to => 'sessions#destroy', :as => :login	

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
