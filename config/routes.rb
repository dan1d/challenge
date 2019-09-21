Rails.application.routes.draw do
  # get 'hello_world', to: 'hello_world#index'
  root "movies#index"

  resources :movies
  resources :people
end
