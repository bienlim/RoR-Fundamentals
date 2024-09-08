Rails.application.routes.draw do
  resources :users
  post 'users/loginProcess', to: 'users#loginProcess'
  root 'users#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
