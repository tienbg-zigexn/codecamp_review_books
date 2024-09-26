Rails.application.routes.draw do
  resources :books do
    resources :reviews, only: :create
  end
  root 'books#index'
end
