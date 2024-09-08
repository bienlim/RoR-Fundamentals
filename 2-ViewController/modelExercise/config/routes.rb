Rails.application.routes.draw do
  root 'products#index'
  get 'products/index'
  get 'products/new'
  get 'products/count'
  post 'products/create', to: 'products#create'
  post 'products/update', to: 'products#update'
  get 'products/:id', to: 'products#id'
  get 'products/:id/edit', to: 'products#edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
