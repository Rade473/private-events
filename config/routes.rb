Rails.application.routes.draw do
  root 'pages#home'
  resources :events do
    member do
      get 'attend'
    end
  end
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  

  # get 'events/attend'
  get 'users/profile'
  get '/u/:id', to: 'users#profile', as: 'user'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
