Rails.application.routes.draw do
  resources :medicines
  resources :medicine_categroys
  resources :bones_segments
  resources :companies
  resources :surgeries
  get  'x_rays/new/:record_id' => 'x_rays#new', :as => :new_x_ray
  resources :x_rays , :except => :new
  resources :records
  get  'tests/new/:record_id' => 'tests#new', :as => :new_test
  resources :tests, :except => :new
  resources :phones
  resources :treatment_centers
  resources :specializations
  resources :syndicates
  resources :patients
  devise_for :users
  get 'getpatient/:national_id' => 'profile#getpatient'
  get 'profile' => 'profile#show'
  get 'patientRecord/:patient_id' => 'records#patientRecords', :as => :patient_records
  get 'patientSurgery/:patient_id' => 'surgeries#patientSurgeries', :as => :patient_surgeries
  get 'newrecord/:patient_id' => 'records#new', :as => :record_new
  get 'add_paitent_to_user/:patient_id' => 'patients#add_patient_to_user', :as => :add_patient

  root 'profile#show' 
  #root to: "/home"
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
