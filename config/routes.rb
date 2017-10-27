Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  get '/customers', to: 'customers#show'

  resources :customers, only: %i[create]
  post '/customers/:id/done', to: 'customers#done'

  mount ActionCable.server => '/cable'
end
