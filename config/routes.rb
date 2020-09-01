Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index'
  get 'task/:id', to: 'tasks#show', as: :task
  get 'tasks/new', to: 'tasks#new', as: :new
  get 'task/:id/edit', to:'tasks#edit', as: :edit

  delete 'task/:id', to: "tasks#destroy", as: :destroy
  patch 'task/:id', to: 'tasks#update', as: :update

  post 'tasks', to: 'tasks#create', as: :create
end
