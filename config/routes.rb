Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'

  # resources :users do
  #   resources :stories
  # end

  get 'users/' => 'users#index'
  post 'users/' => 'users#create'
  get 'users/new' => 'users#new', as: :new_user
  get 'users/:id' => 'users#show', as: :user
  get 'users/:id/edit' => 'users#edit', as: :edit_user
  patch 'users/:id' => 'users#update'
  delete 'users/:id' => 'users#destroy'

  get 'users/:user_id/stories' => 'stories#index', as: :user_stories
  post 'users/:user_id/stories' => 'stories#create'
  get 'users/:user_id/stories/new' => 'stories#new', as: :new_user_story
  get 'users/:user_id/stories/:id' => 'stories#show', as: :user_story
  get 'users/:user_id/stories/:id/edit' => 'stories#edit', as: :edit_user_story
  patch 'users/:user_id/stories/:id' => 'stories#update'
  delete 'users/:user_id/stories/:id' => 'stories#destroy'


  # how to create routes for comments?

  get '/login'     => 'sessions#new'
  post '/login'    => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

end
