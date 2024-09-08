Rails.application.routes.draw do
  
  get 'training/index'
  get 'training/new'
  root 'training#index'
  post 'training', to: 'training#create'


  get 'training/:id2/graduates/:id/edit', to: 'graduates#edit'
  get 'training/:id2/graduates/:id', to: 'graduates#show'
  get 'training/:id/edit', to: 'training#edit'
  get 'training/:id', to: 'training#show'
  patch 'training/:id', to: 'training#update'
  delete 'training/:id', to: 'training#destroy'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
