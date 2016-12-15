Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'pages#home'
  get '/spills' => 'spills#index'
  get '/spill' => 'spill#show'
end
