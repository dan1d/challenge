Rails.application.routes.draw do
  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # get 'hello_world', to: 'hello_world#index'
  root "movies#index"

  resources :movies, only: [:index, :show]
  resources :people, only: [:index, :show]

  namespace :v1, defaults: { format: :json } do
    resources :movies, only: [:index, :show]
    resources :people, only: [:index, :show]
  end
end
