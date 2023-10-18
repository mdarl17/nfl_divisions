Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  
  get '/divisions/new', to: 'divisions#new'
  get '/divisions/:id/teams', to: 'division_teams#index'
  get '/divisions/:id/teams/new', to: 'division_teams#new'
  get '/teams', to: 'teams#index'
  get '/divisions', to: 'divisions#index'
  get '/teams/:id', to: 'teams#show'
  get '/divisions/:id', to: 'divisions#show'
  get '/divisions/:id/edit', to: 'divisions#edit'
  patch '/divisions/:id', to: 'divisions#update'
  patch '/teams/:id', to: 'teams#update'
  get '/teams/:id/edit', to: 'teams#edit'
  post '/divisions/:id/teams', to: 'division_teams#create'
  post '/divisions', to: 'divisions#create'
  delete '/divisions/:id', to: 'divisions#destroy'

end
