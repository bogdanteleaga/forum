module Web::Controllers::Post
  class New
    include Web::Action
    expose :topic_id

    def call(params)
      halt 401 unless UserRepository.logged_in? session
      @topic_id = params[:topic_id]
      puts @topic_id
    end
  end
end
