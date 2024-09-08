Rails.application.routes.draw do
  root 'users#login'
#login page
  post 'login_process', to: 'users#login_process'
  get 'friendships/index'
  get 'friendships/create'
  get 'users/index'
  get 'users/new'
  post 'users/create', to: 'users#create'
  get 'users/:id', to: 'users#show'
  get 'users/destroy'
  get 'users/edit'
  get 'users/update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
