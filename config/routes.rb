<<<<<<< HEAD
Rails.application.routes.draw do
  resources :payment_mentors
  resources :date_mentors
  resources :mentors
  resources :book_payments
  resources :books
  resources :users
  resources :categories
  resources :roles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
=======
Rails.application.routes.draw do
  devise_for :users
  root to: 'static#homepage'
  resources :payment_mentors
  resources :date_mentors
  resources :mentors
  resources :book_payments
  resources :books
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
>>>>>>> 44f0b03d097c8b08eaf45a4bd8d4d066cc0de6f4
