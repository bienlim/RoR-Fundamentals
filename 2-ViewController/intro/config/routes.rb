Rails.application.routes.draw do
  get 'users/index'
  get 'users/new'
  get 'users/edit'
  post 'users', to: 'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
