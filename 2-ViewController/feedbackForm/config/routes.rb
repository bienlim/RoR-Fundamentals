Rails.application.routes.draw do
  get 'feedback/index'
  post 'feedback/show', to: 'feedback#show'
  get 'feedback/show'
  root 'feedback#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
