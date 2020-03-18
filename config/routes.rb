Rails.application.routes.draw do
  # get 'session/new'
  # get 'users/index'
  # get 'users/new'
  # get 'pages/index'
  # get 'pages/list'
  # get 'pages/search'
  # get 'property/index'
  # get 'property/new'
  # get 'property/show'
  # get 'property/edit'
  # get 'seller/index'
  # get 'seller/new'
  # get 'seller/show'
  # get 'seller/edit'
  root :to => 'pages#search'

  resources :users, :only => [:new,:create,:index]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :sellers     #, :only => [:new,:create,:index,:show]
  resources :properties   #, :only => [:new,:create,:index,:show]
end
