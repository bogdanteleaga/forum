module Web::Views::Topics
  class Show
    include Web::View

    def user_id
      user = UserRepository.logged_in session
      if user
        user.id
      else
        nil
      end
    end
  end
end
