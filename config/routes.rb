Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # # 1) A user can see all the lists - GET "lists" (INDEX)
  # get 'lists', to: 'lists#index'
  # # 2) A user can see the details of a given list and its name - GET "lists/42" (SHOW)
  # get 'lists/:id', to: 'lists#show'
  # # 3) A user can create a new list - GET "lists/new" - POST "lists" (CREATE)
  # get 'lists/new', to: 'lists#new'
  # post 'lists', to: 'lists#create'

  # A user can delete a bookmark from a list. How can we make a delete link again?
  # DELETE "bookmarks/25"

  root 'list#index'

  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
