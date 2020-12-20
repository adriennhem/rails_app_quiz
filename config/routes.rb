Rails.application.routes.draw do
  post '/jobs', to: 'jobs#create'
  get '/jobs/:id', to: 'jobs#show'
  get '/jobs', to: 'jobs#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
