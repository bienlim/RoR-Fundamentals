Rails.application.routes.draw do
  post 'game/low', to: 'game#low'
  post 'game/moderate', to: 'game#moderate'
  post 'game/high', to: 'game#high'
  post 'game/severe', to: 'game#severe'
  post 'game/reset', to: 'game#reset'
  get 'game/index', to: 'game#index'
  root 'game#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
