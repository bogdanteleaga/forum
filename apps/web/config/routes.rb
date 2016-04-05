get '/', to: 'home#index'
post '/users/login', to: 'users#login'
post '/users', to: 'users#create'
get '/users/new', to: 'users#new'
get '/topics', to: 'topics#index'
# Configure your routes here
# See: http://www.rubydoc.info/gems/hanami-router/#Usage
