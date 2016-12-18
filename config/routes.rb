Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/index' => 'pages#home'
  get '/recent_spills' => 'spills#recent_spills'
  get '/spill' => 'spill#show'
  get '/map' => 'pages#map'
  get '/graphs' => 'pages#graphs'
end
