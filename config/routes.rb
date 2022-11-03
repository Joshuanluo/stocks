Rails.application.routes.draw do

  root :to => 'pages#home'
  get "/stocks/search" => "stocks#search", :as => "search"
  post "/stocks/search" => "stocks#find"
  get "/orders/new/:symbol" => "orders#new", :as => "new_order"
  
  resources :users, :only => [:new, :create, :index]
  resources :orders, :only => [:create, :index, :destroy, :show]
  resources :stocks, :only => [:index, :new, :show, :create]


  # resources :session, :only => [:new, :create, :destroy]
  get '/login' => "session#new"
  post '/login' => "session#create"
  delete '/login' => "session#destroy"
  


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
