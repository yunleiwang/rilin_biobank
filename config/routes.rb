Rails.application.routes.draw do
  resources :sample_out_logs
  #resources :sys_table_columns
  resources :sample_preout_logs
  resources :menu_libs
  get 'search_info/search_today'

  get 'search_info/search_all'

  get 'sys_account/sign_in'

  get 'login' => 'sys_account#sign_in'

  get 'sys_account/sign_out'

  get 'sys_account/change_password'

  get 'sys_printers/setting_index'
  get 'sys_printers/setting_test'
  get 'sys_printers/setting_change'
  get 'sys_printers/print_sample'

  get 'sys_table_columns/capture'


  post 'sys_account/login'

  resources :sys_account
  resources :hospitals
  resources :sys_roles
  resources :sys_users
  resources :patient_cases
  resources :sample_storage_logs
  resources :samples do
    member do
      get 'sample_info'
      get 'samples_out'
      post 'samples_pre_out'
    end
  end
  resources :sample_storages
  resources :boxers
  resources :boxer_storages
  resources :frames
  resources :frame_storages
  resources :containers do
    post 'select_container'
  end
  resources :container_types
  resources :patient_infos
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

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
