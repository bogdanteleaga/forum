module Web::Controllers::Users
  class Login
    include Web::Action

    def call(params)
      user = UserRepository.get_name params[:user]['name']
      password = params[:user]['password']

      if user
        if user.login password
          session[:user] = user.name
          session[:token] = user.token

          redirect_to '/topics'
        else
          redirect_to '/'
        end
      end
    end
  end
end
