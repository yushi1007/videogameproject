Rails.application.routes.draw do
  get '/videogames', to: 'videogames#index', as: 'videogames'

  get '/videogames/new', to: 'videogames#new', as: 'new_videogame'

  post '/videogames', to: 'videogames#create'

  get '/videogames/:id', to: 'videogames#show', as: 'videogame'

  get '/videogames/:id/edit', to: 'videogames#edit', as: 'edit_videogame'
  patch '/videogames/:id', to: 'videogames#update'

  delete '/videogames/:id', to: 'videogames#destroy'
 
end
