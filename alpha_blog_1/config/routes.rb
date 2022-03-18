Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles, only: [:show] # gives us all of the routes we want for articles - in terminal rails routes --expanded
end
