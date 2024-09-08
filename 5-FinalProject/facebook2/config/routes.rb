Rails.application.routes.draw do
  root 'users#login'
  #posts
    get 'posts/home'
    post 'posts/new', to: 'posts#new'
  #friendships
  get 'friendship/add'
  get 'friendship/remove'
  #login page
    post 'login_process', to: 'users#login_process'
    get 'friendships/index'
    get 'friendships/create'
    get 'users/index'
    get 'users/new'
    get 'users/logout'
    post 'users/create', to: 'users#create'
    get 'users/destroy'
    get 'users/edit'

  
    post 'users/update', to: 'users#update'
    get 'add/:id', to: 'friendship#add'
    get 'remove/:id', to: 'friendship#remove'
    get 'users/:id', to: 'users#show'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
