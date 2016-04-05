module Web::Controllers::Topics
  class Index
    include Web::Action
    expose :topics

    def call(params)
      halt 401 unless UserRepository.logged_in? session
      @topics = TopicRepository.all
    end
  end
end
