Rails.application.routes.draw do
  resources :reviews, only: [:index, :show, :create, :update, :destroy]
  resources :vhs_tapes, only: [:index, :show, :create, :update, :destroy]
  resources :rentals, only: [:index, :show, :create, :update, :destroy]
  resources :clients, only: [:index, :show, :create, :update, :destroy]

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/me', to: 'clients#show'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
