module Web::Controllers::Topics
  class Show
    include Web::Action
    expose :topic, :posts

    def call(params)
      halt 401 unless UserRepository.logged_in? session
      @topic = TopicRepository.find(params[:id])
      @posts = PostRepository.by_topic(params[:id])
      user = UserRepository.get_name(session[:user])
      posts.map { |x| x.topic_id=user.id==x.user_id }
      posts.map { |x| x.user_id=UserRepository.find(x.user_id).name }
    end
  end
end
