Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'pages#home'
  get '/map' => 'pages#map'
  get '/about' => 'pages#about'

  get '/sign-up' => 'users#new'
  post '/users' => 'users#create'

  get '/sign-in' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/json/all' => 'maps#json_index'

  get '/json/spills_by_year' => 'graphs#spills_by_year'

  get '/index' => 'spills#index'
  get '/bakken_counties' => 'spills#bakken_counties'
  get '/spills/:id' => 'spills#show'

  post '/post' => 'posts#create'


end
