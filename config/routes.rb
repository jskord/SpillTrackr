Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'pages#home'
  get '/map' => 'pages#map'
  get '/graphs' => 'pages#graphs'
  get '/test' => 'pages#test'

  get '/index' => 'spills#index'
  get '/spill/:id' => 'spills#show'

end
