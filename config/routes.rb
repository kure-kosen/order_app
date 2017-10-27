Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  resources :customers, only: %i[index create]
  post '/customers/:id/done', to: 'customers#done'

  mount ActionCable.server => '/cable'
end
