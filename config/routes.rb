Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/cbos', to: 'cbos#index'
      get '/cbos/constants', to: 'cbos#get_constants'
      post '/cbos/login', to: 'cbos#login'
      get '/cbos/persist_login', to: 'cbos#persist_login'

      post '/prescribers', to: 'prescribers#create'
      patch '/prescribers/:id', to: 'prescribers#update'
      delete '/prescribers/:id', to: 'prescribers#destroy'

      post '/hcs/login', to: 'hcs#login'
      get '/hcs/persist_login', to: 'hcs#persist_login'

      post '/rxs', to: 'rxs#create'
      patch '/rxs/cbos', to: 'rxs#cbo_update'

      post '/surveys', to: 'surveys#create'
    end
  end
end
