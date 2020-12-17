Rails.application.routes.draw do

  root to: 'static_pages#root'
  
  namespace :api, defaults:{format: :json} do 
    resources :users, only: [:create, :update, :index, :show]
    resource :sessions, only: [:create, :destroy]
    resources :claps, only:[:create, :update, :show, :index]
    resources :stories, only: [:create, :update, :index, :show, :destroy]
    post '/followings/:id', to: 'followings#create'
    delete '/followings/:id', to: 'followings#destroy'
  end
end
