Prz::Application.routes.draw do
  root :to => 'people#index'
  resources :people do
    resources :curations
  end


end
