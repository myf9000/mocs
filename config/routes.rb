Rails.application.routes.draw do
  get 'sessions/create'

  root to: 'meals#index'

  get 'meals/index'
  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

end
