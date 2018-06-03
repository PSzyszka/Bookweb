Rails.application.routes.draw do
  root 'books#index'

  devise_for :admins
  devise_for :users
  resources :publishers, only: [:index, :show]
  resources :messages, only: [:new, :create]
  resources :authors, only: [:index, :show] do
    resources :ratings, only: [:index, :create]
  end

  scope module: :admin do
    resources :authors, only: [:new, :edit, :create, :update, :destroy]
    resources :publishers, only: [:new, :edit, :create, :update, :destroy]
    resources :comments, only: [:destroy]
  end

  get '/books/lists' => 'books#lists'
  resources :books, only: [:index, :show, :create, :new, :destroy, :update, :edit] do
    resources :ratings, only: [:index, :create]
    resources :comments, only: [:create, :destroy]
    member do
      get "policy_terms"
    end
  end

  resources :genres, only: :index do
    member do
      get "books"
    end
  end
end
