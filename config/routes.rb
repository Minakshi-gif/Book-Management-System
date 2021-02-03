Rails.application.routes.draw do


  resources :employees
  #get 'sessions/new'
  #get 'sessions/create'
  #get 'sessions/destroy'
  get 'sessions/welcome'
  resources :employees

  get 'home/index'
  root 'home#index'
  resources :employees
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'employees#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'welcome', to: 'sessions#welcome', as: 'welcome'

   get 'book/list'

   get 'book/show'

   get 'book/new'

   get 'book/edit'

   get 'book/welcome'

   get 'book/login'

   post 'book/registration'

   get 'book/add'

   get 'book/delete'

   get 'book/loginsuccessful'
    
  

   match ':controller(/:action(/:id(.:format)))',:via => [:get,:post]
   

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
