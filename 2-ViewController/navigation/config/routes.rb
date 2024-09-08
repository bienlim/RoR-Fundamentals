Rails.application.routes.draw do
  root 'mains#index'
  get 'counts/index'
  get 'counts' , to: 'counts#index'
  get 'counts/reset'
  get 'mains/index'
  get 'mains', to: 'mains#index'
  get 'mains/hello'
  get 'mains/say'
  get 'mains/say/hi', to: 'mains#say'
  get 'mains/say_anything/:text', to: 'mains#say_anything'
  get 'mains/danger'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
