Rails.application.routes.draw do
  get 'countdown/main'
  root 'countdown#main'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
