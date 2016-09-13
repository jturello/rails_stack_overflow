Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'questions#index'

  resources :users

  resources :questions do
    resources :answers do
      resources :comments do
        resources :votes
      end
    end
  end
end
