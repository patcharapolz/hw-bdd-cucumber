Rottenpotatoes::Application.routes.draw do
  root 'pages#home'

  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :movies
  # devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # map '/' to be a redirect to '/movies'
  # root :to => redirect('/movies')
end
