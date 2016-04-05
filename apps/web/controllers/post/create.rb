module Web::Controllers::Post
  class Create
    include Web::Action

    def call(params)
      halt 401 unless UserRepository.logged_in? session

      user = UserRepository.get_name(session[:user])
      user_id = user.id
      topic_id = params[:post]['topic_id']
      title = params[:post]['title']
      content = params[:post]['content']

      PostRepository.create(Post.new title: title, user_id: user_id, content: content, topic_id: topic_id)

      redirect_to "/topics/"+topic_id

    end

  end
end
