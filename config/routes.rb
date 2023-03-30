Rails.application.routes.draw do
  devise_for :members ,sign_out_via: [:get, :post]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "posts#index"
  resources :posts, only: [:index,:new,:create]


end
