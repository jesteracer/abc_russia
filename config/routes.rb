Prz::Application.routes.draw do
  root :to => 'people#index'
  resources :members do
    member do
      get :admin
      get :curator
    end
  end
  resources :people do
    resources :curations
    resources :photos
    resources :transactions
  end
  resources :posts do
    collection do
      get "person/:person_id", action: :index, as: :person
    end
  end
end
