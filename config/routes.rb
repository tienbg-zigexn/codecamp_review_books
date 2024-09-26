Rails.application.routes.draw do
  resources :books do
    collection do
      get :search
    end
    resources :reviews, only: :create
  end
  root 'books#index'
end
