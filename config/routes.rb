Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  mount StripeEvent::Engine, at: '/stripe-webhooks'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :products, only: [ :index, :show ] do
    resources :purchases, only: [ :create ]
  end
  resources :purchases, only: [ :destroy ]
  resources :orders, only: [ :index, :show, :create ] do
    resources :payments, only: :new
  end
end
