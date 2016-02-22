Rails.application.routes.draw do
  resources :meals, only: 'index', defaults: {format: :json} 
  root to: 'meals#index'
  
  get 'orders/index', as: 'orders'

  get 'sessions/create'
  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
