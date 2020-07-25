Rails.application.routes.draw do
  resources :surveys
  namespace :api do
    namespace :v1 do
      get '/cbos', to: 'cbos#index'
      post '/cbos/login', to: 'cbos#login'
      get '/cbos/persist_login', to: 'cbos#persist_login'

      post '/prescribers', to: 'prescribers#create'
      patch '/prescribers/:id', to: 'prescribers#update'
      delete '/prescribers/:id', to: 'prescribers#destroy'

      post '/hcs/login', to: 'hcs#login'
      get '/hcs/persist_login', to: 'hcs#persist_login'

      post '/rxs', to: 'rxs#create'
      patch '/rxs/:id', to: 'rxs#update'
    end
  end
end
