Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'pages#home'
  get '/map' => 'pages#map'

  get '/sign-up' => 'users#new'
  post '/users' => 'users#create'

  get '/sign-in' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/json/all' => 'maps#json_index'
  get '/json/bakken_counties' => 'maps#json_bakken_counties'
  get '/json/last_five_years' => 'maps#json_last_five_years'
  get '/json/ten_to_five_years_ago' => 'maps#json_ten_to_five_years_ago'

  get '/index' => 'spills#index'
  get '/bakken_counties' => 'spills#bakken_counties'
  get '/spills/:id' => 'spills#show'

  post '/post' => 'posts#create'


end
