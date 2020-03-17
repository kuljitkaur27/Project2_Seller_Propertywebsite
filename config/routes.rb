Rails.application.routes.draw do
  get 'pages/list'
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
  resources :sellers     #, :only => [:new,:create,:index,:show]
  resources :properties   #, :only => [:new,:create,:index,:show]
end
