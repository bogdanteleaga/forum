post '/post/edit/:id', to: 'post#editpost'
get '/post/edit/:id', to: 'post#editget'
get '/post/delete/:id', to: 'post#delete'
get '/', to: 'home#index'
post '/users/login', to: 'users#login'
get '/users/logout', to: 'users#logout'
post '/users/', to: 'users#create'
get '/users/new', to: 'users#new'
get '/topics', to: 'topics#index'
post '/topics', to: 'topics#create'
get '/topics/new', to: 'topics#new'
get '/topics/:id', id: /\d+/, to: 'topics#show'
get '/post/new', to: 'post#new'
post '/post', to: 'post#create'
# Configure your routes here
# See: http://www.rubydoc.info/gems/hanami-router/#Usage
