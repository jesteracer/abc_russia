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
  end
end
