Rails.application.routes.draw do
  match '/logout', to: 'sessions#destroy', via: :delete
   root 'sessions#index'
   post 'sessions/new', to: 'sessions#create'
   post 'events/new', to: 'events#create'
   resources :users, only: [:new,:create,:show]
   resources :events, only: [:index,:show,:new]
   resources :sessions

end
