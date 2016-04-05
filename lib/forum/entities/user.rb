class User
  include Hanami::Entity
  attributes :name, :password

  def login(pass)
    hashed = BCrypt::Password.new password

    hashed == pass
  end

  def token
    salt = BCrypt::Password.new(password).salt

    BCrypt::Password.create(name + salt).to_s
  end

  def token?(token)
    salt = BCrypt::Password.new(password).salt

    BCrypt::Password.new(token) == name + salt
  end
end
