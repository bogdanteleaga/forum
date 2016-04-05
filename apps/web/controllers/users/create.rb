require 'bcrypt'

module Web::Controllers::Users
  class Create
    include Web::Action

    def call(params)
      name = params[:user]['name']
      password = BCrypt::Password.create params[:user]['password']

      UserRepository.create(User.new name: name, password: password)

      redirect_to '/'
    end
  end
end
