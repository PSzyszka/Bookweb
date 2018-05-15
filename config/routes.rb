Rails.application.routes.draw do
  root 'books#index'

  devise_for :admins
  devise_for :users
  resources :authors, only: [:index, :show]
  resources :publishers, only: [:index, :show]
  resources :messages, only: [:new, :create]

  scope module: :admin do
    resources :authors, only: [:new, :edit, :create, :update, :destroy]
    resources :publishers, only: [:new, :edit, :create, :update, :destroy]
    resources :books, only: [:new, :edit, :create, :update, :destroy]
    resources :comments, only: [:destroy]
  end

  resources :books do
    resources :comments, only: [:create, :destroy]
  end

  resources :genres, only: :index do
    member do
      get "books"
    end
  end
end
