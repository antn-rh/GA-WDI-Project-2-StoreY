Rails.application.routes.draw do

  root 'users#welcome'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    resources :stories do
      resources :pins do
        resources :comments
      end
    end
  end

  get '/login'     => 'sessions#new'
  post '/login'    => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

end
