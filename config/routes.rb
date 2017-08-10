Rails.application.routes.draw do
  resources :apples, only: [:index, :show, :create, :new]

  resources :oranges, only: [:index, :show, :create, :new]

  root 'apples#index'
end
