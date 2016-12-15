Rails.application.routes.draw do


  devise_for :users

  devise_scope :user do
    root to: "devise/sessions#new"
  end

  get 'home/index'

  resources :quizzes do
    collection do
      get :list_admin

      get 'take_the_quiz/:id', action: :take_the_quiz, as: 'take_the'

      post 'answer_the_quiz'
    end
  end

  resources :answers_quiz, only: ['take_the_quiz', 'answer_the_quiz', 'quiz_result'] do
    collection do
      get 'take_the_quiz/:id', action: :take_the_quiz, as: '/'

      post :answer_the_quiz

      get 'quiz_result/:id', action: :quiz_result, as: 'result'
    end
  end




  # get 'quizzes/list_admin' => 'quizzes#list_admin', as: :list_admin

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
