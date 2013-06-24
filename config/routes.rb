Prz::Application.routes.draw do
  root :to => 'people#index'
  resources :people do
    resources :curations
    resources :photos
  end
end
