Rails.application.routes.draw do
  devise_for :users
  root to: 'static#homepage'
  resources :customers
  resources :payment_mentors
  resources :date_mentors
  resources :mentors
  get 'book_payments/confirm'
  resources :book_payments
  
  resources :books
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
