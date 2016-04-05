class UserRepository
  include Hanami::Repository

  def self.get_name(name)
    query do
      where(name: name)
    end.first
  end

  def self.logged_in?(session)
    if session[:user] && session[:token]
      user = UserRepository.get_name session[:user]

      user && user.token?(session[:token])
    else
      false
    end
  end
end
