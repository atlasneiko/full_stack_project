Rails.application.routes.draw do
  namespace :api do
    get 'sotriesrails/ckl'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults:{format: :json} do 
    resources :users, only: [:create, :update, :index, :show]
    resource :sessions, only: [:create, :destroy]
    resources :stories, only: [:create, :update, :index, :show, :destroy]
  end

  root to: 'static_pages#root'
end
