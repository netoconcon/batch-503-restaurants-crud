Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # LISTAR TODOS OS RESTAURANTES
  get "restaurants", to: "restaurants#index"

   # MOSTRAR O FORM DE CREATE
  get "restaurants/new", to: "restaurants#new"

  # MOSTRAR UM RESTAURANTE
  get "restaurants/:id", to: "restaurants#show", as: :restaurant

  # CRIAR O RESTAURANTE
  post "restaurants", to: "restaurants#create"

  # MOSTRAR O FORM DE EDIT
  get "restaurants/:id/edit", to: "restaurants#edit"

  # ATUALIZAR AS INFORMAÇÕES
  patch "restaurants/:id", to: "restaurants#update"

  # DESTROY
  delete "restaurants/:id", to: "restaurants#destroy"

  # resources :restaurants
  # resources :restaurants, only: [:index, :show]
  # resources :restaurants, except: [:index, :show]
end
