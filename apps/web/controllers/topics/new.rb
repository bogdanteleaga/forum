module Web::Controllers::Topics
  class New
    include Web::Action

    def call(params)
      halt 401 unless UserRepository.logged_in? session
    end
  end
end
