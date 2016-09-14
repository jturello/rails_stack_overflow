Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get 'signup', to: 'users#new', as: 'signup'
  # get 'login', to: 'sessions#new', as: 'login'
  # get 'logout', to: 'sessions#destroy', as: 'logout'

  root :to => 'questions#index'

  resources :users
  resources :sessions

  resources :questions do
    resources :answers do
      resources :comments do
        resources :votes
      end
    end
  end
end
