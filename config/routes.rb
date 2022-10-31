Rails.application.routes.draw do

  root :to => 'pages#home'

  resources :users, :only => [:new, :create, :index]
  resources :orders, :only => [:new, :create, :index, :destroy, :show]
  resources :stocks, :only => [:index, :show]


  # resources :session, :only => [:new, :create, :destroy]
  get '/login' => "session#new"
  post '/login' => "session#create"
  delete '/login' => "session#destroy"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
