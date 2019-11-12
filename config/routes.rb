Rails.application.routes.draw do
  root to: 'kitties#index'
  get 'kitties', to: 'kitties#index'

  # need to have kitties/new above... because :id can be a string with rails... so
  # it finds a match of /new... here
  get 'kitties/new', to: 'kitties#new'
  post 'kitties', to: 'kitties#create'

  get 'kitties/:id', to: 'kitties#show', as: :kitty

  get 'kitties/:id/edit', to: 'kitties#edit', as: :edit_kitty
  patch 'kitties/:id', to: 'kitties#update'




  # get 'kitties/index'
  # get 'kitties/show'
  # get 'kitties/create'
  # get 'kitties/update'
  # get 'kitties/new'
  # get 'kitties/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
