Rails.application.routes.draw do
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # get 'hello_world', to: 'hello_world#index'
  root "movies#index"

  resources :movies
  resources :people
end
