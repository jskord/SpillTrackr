Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'pages#home'
  get '/map' => 'pages#map'
  get '/map/all_state' => 'pages#all_state'

  get '/index' => 'spills#index'
  get '/index/bakken_counties' => 'spills#bakken_counties'

end
