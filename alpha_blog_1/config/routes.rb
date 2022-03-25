Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles # , only: [:show, :index, :new, :create, :edit, :update, :destroy] # gives us all of the routes we want for articles - in terminal rails routes --expanded

  def index
    @articles = Article.all
  end
end
