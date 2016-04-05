module Web::Controllers::Users
  class Logout
    include Web::Action

    def call(params)
      session[:user] = nil
      session[:token] = nil

      redirect_to '/'
    end
  end
end
