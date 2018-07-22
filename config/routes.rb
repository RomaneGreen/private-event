Rails.application.routes.draw do
  match '/logout', to: 'sessions#destroy', via: :delete
   root 'sessions#index'
   post 'sessions/new', to: 'sessions#create'
   resources :users, only: [:new,:create,:show]
   resources :sessions

end
