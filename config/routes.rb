Rails.application.routes.draw do

root to: 'lists#index'
resources :lists, except: [:edit, :update] do
  resources :bookmarks, only: [:new, :create]
end
resources :bookmarks, only: [:destroy]

Rails.application.routes.draw do
  root to: "articles#index"
  resources :articles, except: :index
end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
