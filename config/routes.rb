Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'pages#home'
  get '/map' => 'pages#map'

  get '/sign-up' => 'users#new'
  post '/users' => 'users#create'

  get '/json/all' => 'spills#index'
  get '/json/bakken_counties' => 'spills#bakken_counties'

end
