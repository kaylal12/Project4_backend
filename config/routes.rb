Rails.application.routes.draw do
  post '/register' => 'auth#register'

  post '/login' => 'auth#login'
  delete '/logout/:id' => 'auth#logout'

  resources :users, except: [:new, :edit]

  resources :profiles, except: [:new, :edit]
end
