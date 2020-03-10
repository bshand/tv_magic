Rails.application.routes.draw do
  root to: 'search#index'
  get 'search', to: 'search#index'
  get 'search/download'
  get 'search/test'

  resources :remotes
  resources :tvs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
