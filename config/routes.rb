Rails.application.routes.draw do
  get 'tasks/create'
  get 'tasks/destroy'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'toppages/index'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
 
 root to: 'toppages#index'
 root to: 'tasks#index'
 
  resources :tasks, only: [:create, :destroy]
  
  resources :users, only: [:index, :show, :new, :create]
  
  get 'signup', to: 'users#new'
  

end
