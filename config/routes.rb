Rails.application.routes.draw do
  root 'requests#home'

  resources :requests
  post '/search' => 'requests#search', as: :search
  get '/search' => 'requests#search'
  # get    '/requests/new' =>      'requests#new', as: :new_request
  # get    '/requests/:id' =>      'requests#show', as: :request
  # post   '/request' =>          'requests#create', as: :requests
  # get    '/requests' =>          'requests#index'
  # get    '/requests/:id/edit' => 'requests#edit', as: :edit_request
  # patch  '/requests/:id' =>    'requests#update'
  # delete '/requests/:id' =>   'requests#destroy'

end
